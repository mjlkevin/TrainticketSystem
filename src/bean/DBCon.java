package bean;
import java.sql.*;
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
			String password="Mjlkevin121133";
		
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
			
		
/*		try{
			//加载驱动程序
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//连接数据库
			String url="jdbc:sqlserver://localhost:1433; DatabaseName=UsersDB";
			Connection conn=DriverManager.getConnection(url,"sa","");
			System.out.println("数据库连接成功!");
			return conn;
		}catch(ClassNotFoundException ex1){
			System.out.println("数据库连接失败!");
			ex1.printStackTrace();
			return null;
		}catch(SQLException ex2){
			System.out.println("数据库连接失败!");
			ex2.printStackTrace();
			return null;
		}
	}*/
	//验证用户登录的方法
	public static boolean validateLogin(String name,String password){
		System.out.println("进入validateLogin方法");
		Connection conn=JDBCon();
		Statement stmt=null;
		try{
			stmt=conn.createStatement();
			String sql="select * from accountinfo where uname='"+name+"' and upassword='"+password+"'";
			ResultSet rs=stmt.executeQuery(sql);
			System.out.println(rs);
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
			String sql="insert into accountinfo values('"+person.getName()+"','"+person.getPassword()+"','"+
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

	//车次查询的方法
	public static ResultSet TrainQuery(Train train){
		Connection conn=JDBCon();
		Statement stmt=null;
		//确定数据库表
        String station =train.getDepStation();
        
         if(station.equals("中山")) {
        	station = "zs_traininfo";
        	}else if(station.equals("唐家湾")){
        	station = "tjw_traininfo";	
        	}else if(station.equals("珠海")){
            station = "zh_traininfo";	
            }else if(station.equals("广州南")){
            station = "gzn_traininfo";
            }
        System.out.println("table:"+"\t"+station);
        System.out.println("trainnumber"+"\t"+"ArrivalTime"+"\t"+"LeaveTime");
            
		try{
			stmt=conn.createStatement();
	        //sql查询语句
			String sql="select * from "+station;
			//执行查询，把查询结果赋值给结果集对象
			ResultSet rs = stmt.executeQuery(sql);

			return rs;
		}catch(SQLException ex){
			System.out.println("数据库访问失败!");
			ex.printStackTrace();
			return null;
		}
	}
}
