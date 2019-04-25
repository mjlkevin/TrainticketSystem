package bean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class DBCon {
	public DBCon(){
		
	}
	//连接数据库的方法
	public static Connection JDBCon(){
		try{
			//加载驱动程序
			Class.forName("com.mysql.cj.jdbc.Driver");
			//连接数据库
//			characterEncoding=utf-8serverTimezone=GMT
			String url="jdbc:mysql://localhost:3306/trainticketsystem?characterEncoding=utf-8&serverTimezone=GMT";
			String username="root";
			String password="Mjlkevin121133@";
		
            Connection conn = DriverManager.getConnection(url,username,password);
            return conn;
		}catch(ClassNotFoundException cnfex){
			System.err.println("装载JDBC/ODBC驱动程序失败。" );
			cnfex.printStackTrace();
			
            //捕获连接数据库异常
			}catch( SQLException sqlex ){
			System.err.println( "无法连接数据库" );
			sqlex.printStackTrace();
			
			}
		    return null;
		};
			
	//验证用户登录的方法
	public static boolean validateLogin(String name,String password){
		System.out.println("进入validateLogin方法");
		Connection conn=JDBCon();
		Statement stmt=null;
		try{
			stmt=conn.createStatement();
			String sql="select * from tb_user where uname='"+name+"' and upassword='"+password+"'";
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				return true;
			}else{
				return false;
			}
		}catch(SQLException ex){
			System.out.println("数据库连接失败!");
			ex.printStackTrace();
			return false;
		}
	}
	//注册用户的方法
	public static boolean registerUser(Person person){
		Connection conn=JDBCon();
		Statement stmt=null;
		try{
			
			stmt=conn.createStatement();
			String sql="insert into tb_user values('"+person.getName()+"','"+person.getPassword()+"','"+
			            person.getSex()+"',"+person.getAge()+",'"+person.getEmail()+"')";
			int r=stmt.executeUpdate(sql);
			if(r>0){
				return true;
			}else{
				return false;
			}
		}catch(SQLException ex){
			System.out.println("数据库访问失败!");
			ex.printStackTrace();
			return false;
		}
	}

	//this method is used to get index from Array
	public static int printArray(String[] array,String value) {
		for(int i=0;i<array.length;i++) {
			if(array[i].equals(value)) {
				return i;
				
			}
		}
		return -1;
	}
	//to descied which table to be selected
	public static String chooseTable(String sta) {
        
		if(sta!=null) {
        if(sta.equals("中山")) {
        	sta = "tb_station_zs";
       	}else if(sta.equals("唐家湾")){
       		sta = "tb_station_tjw";	
       	}else if(sta.equals("珠海")){
       		sta = "tb_station_zh";
           }else if(sta.equals("广州南")){
        	   sta = "tb_station_gzn";
           }
		}
           return sta;
	};
	//车次查询的方法
	public static List TrainQuery(Train train){
		
		Connection conn = JDBCon();
		Statement stmt  = null;
		
		String dir = train.getDirection();
        String Depstation = train.getDepStation();
        String TerStation = train.getTerStation();
        List alltrainList = new ArrayList();
        
        String[] Station_list = {"广州南","中山","唐家湾","珠海"}; 
        
        int Dep_index = printArray(Station_list, Depstation);
        int Ter_index = printArray(Station_list, TerStation);
        
        if(Dep_index - Ter_index >0) {
        	dir = "广州南";
        }else if(Dep_index - Ter_index <0){
        	dir = "珠海";
        }
        System.out.println("列车方向: "+dir+" 方向");
        
        Depstation = chooseTable(Depstation);
        TerStation = chooseTable(TerStation);
        
		try{
			stmt=conn.createStatement();
			
	        //create SQL query
			String sql="select "+
	        Depstation+".trainnumber,"+
	        Depstation+".ArrivalTime,"+
	        Depstation+".LeaveTime,"+
	        Depstation+".direction"+
	        " from "+
	        Depstation+","+TerStation+
	        " where "+
	        Depstation+".trainnumber = "+TerStation+".trainnumber and "+Depstation+".Direction = "+ "'"+dir+"'";
			
			//执行查询，把查询结果赋值给结果集对象
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Train tResult = new Train();
				tResult.setTrainNumber(rs.getString("trainnumber"));
				tResult.setArrTime(rs.getString("ArrivalTime"));
				tResult.setLeaveTime(rs.getString("LeaveTime"));
				tResult.setDirection(rs.getString(Depstation+".direction"));
				tResult.setDepStation(train.getDepStation());
				tResult.setTerStation(train.getTerStation());
				alltrainList.add(tResult);
			  }
			
			return alltrainList;
			
		}catch(SQLException ex){
			
			System.out.println("数据库访问失败!");
			ex.printStackTrace();
			return null;
		}
		
	}
}
