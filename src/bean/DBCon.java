package bean;
import java.sql.*;
public class DBCon {
	public DBCon(){
		
	}
	//�������ݿ�ķ���
	public static Connection JDBCon(){
		try{
			//������������
			Class.forName("com.mysql.cj.jdbc.Driver");
			//�������ݿ�
//			characterEncoding=utf-8serverTimezone=GMT
			String url="jdbc:mysql://localhost:3306/trainticketsystem?characterEncoding=utf-8&serverTimezone=GMT";
			String username="root";
			String password="Mjlkevin121133@";
		
            Connection conn = DriverManager.getConnection(url,username,password);
            return conn;
		}catch(ClassNotFoundException cnfex){
			System.err.println("װ��JDBC/ODBC��������ʧ�ܡ�" );
			cnfex.printStackTrace();
			
            //�����������ݿ��쳣
			}catch( SQLException sqlex ){
			System.err.println( "�޷��������ݿ�" );
			sqlex.printStackTrace();
			
			}
		    return null;
		};
			
		
/*		try{
			//������������
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//�������ݿ�
			String url="jdbc:sqlserver://localhost:1433; DatabaseName=UsersDB";
			Connection conn=DriverManager.getConnection(url,"sa","");
			System.out.println("���ݿ����ӳɹ�!");
			return conn;
		}catch(ClassNotFoundException ex1){
			System.out.println("���ݿ�����ʧ��!");
			ex1.printStackTrace();
			return null;
		}catch(SQLException ex2){
			System.out.println("���ݿ�����ʧ��!");
			ex2.printStackTrace();
			return null;
		}
	}*/
	//��֤�û���¼�ķ���
	public static boolean validateLogin(String name,String password){
		System.out.println("����validateLogin����");
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
			System.out.println("���ݿ�����ʧ��!");
			ex.printStackTrace();
			return false;
		}
	}
	//ע���û��ķ���
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
			System.out.println("���ݿ����ʧ��!");
			ex.printStackTrace();
			return false;
		}
	}
	//���β�ѯ�ķ���
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
			System.out.println("���ݿ����ʧ��!");
			ex.printStackTrace();
			return false;
		}
	}
}
