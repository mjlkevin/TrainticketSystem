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
			String password="Mjlkevin121133";
		
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
			System.out.println(rs);
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
	public static ResultSet TrainQuery(Train train){
		Connection conn=JDBCon();
		Statement stmt=null;
		//ȷ�����ݿ��
        String station =train.getDepStation();
        
         if(station.equals("��ɽ")) {
        	station = "zs_traininfo";
        	}else if(station.equals("�Ƽ���")){
        	station = "tjw_traininfo";	
        	}else if(station.equals("�麣")){
            station = "zh_traininfo";	
            }else if(station.equals("������")){
            station = "gzn_traininfo";
            }
        System.out.println("table:"+"\t"+station);
        System.out.println("trainnumber"+"\t"+"ArrivalTime"+"\t"+"LeaveTime");
            
		try{
			stmt=conn.createStatement();
	        //sql��ѯ���
			String sql="select * from "+station;
			//ִ�в�ѯ���Ѳ�ѯ�����ֵ�����������
			ResultSet rs = stmt.executeQuery(sql);

			return rs;
		}catch(SQLException ex){
			System.out.println("���ݿ����ʧ��!");
			ex.printStackTrace();
			return null;
		}
	}
}
