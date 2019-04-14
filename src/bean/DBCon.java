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
	public static boolean TrainQuery(){
		Connection conn=JDBCon();
		Statement stmt=null;
		try{
			stmt=conn.createStatement();
			
			String sql="select * from trainnumberinfo('"+person.getName()+"','"+person.getPassword()+"','"+
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
}
