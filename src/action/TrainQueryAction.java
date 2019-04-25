package action;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import bean.DBCon;
import bean.Person;
import bean.Train;
import bean.TrainQuery;

public class TrainQueryAction {
	private String TrainNumber;//����
	private String ArrTime;//����ʱ��
	private String LeaveTime;//����ʱ��
	private String depStation;//�����û�����վ
	private String TerStation;//�����û�Ŀ�ĵ�
	private String depDate;//�����������
	private String depTime;//�������ʱ��
	private String Direction;//����
	private List<TrainQuery> trainQuery;
	private ResultSet rs;
	
    public ResultSet getRs() {
		return rs;
	}
	public void setRs(ResultSet rs) {
		this.rs = rs;
	}
	
	public TrainQueryAction(){
		
	}

	public String getTerStation() {
		return TerStation;
	}
	public String getDepStation() {
		return depStation;
	}
	public void setDepStation(String depStation) {
		this.depStation = depStation;
	}
	public void setTerStation(String TerStation) {
		this.TerStation = TerStation;
	}
	public String getdepDate() {
		return depDate;
	}
	public void setdepDate(String setdepDate) {
		this.depDate = depDate;
	}
	public String getdepTime() {
		return depTime;
	}
	public void setdepTime(String depTime) {
		this.depTime = depTime;
	}
	public String getTrainNumber() {
		return TrainNumber;
	}
	public void setTrainNumber(String trainNumber) {
		TrainNumber = trainNumber;
	}
	public String getLeaveTime() {
		return LeaveTime;
	}
	public void setLeaveTime(String leaveTime) {
		LeaveTime = leaveTime;
	}
	public String getDirection() {
		return Direction;
	}
	public void setDirection(String direction) {
		Direction = direction;
	}
	public List<TrainQuery> getTrainQuery() {
		return trainQuery;
	}
	public void setTrainQuery(List<TrainQuery> trainQuery) {
		this.trainQuery = trainQuery;
	}
	//Ĭ�Ϸ���
	public String execute()throws Exception{
		//ʵ����һ��Train���󣬰���˳�������
		Train train=new Train("",depStation,TerStation,"","",Direction);
		String Depstation = train.getDepStation();
		
		//���ݴ��������ʵ���������Train���󣬵����ݿ��н��в�ѯ
//		    ResultSet rs = DBCon.TrainQuery(train);
		    List alltrainList = DBCon.TrainQuery(train);
			Depstation = DBCon.chooseTable(Depstation);
			System.out.println(alltrainList);
			System.out.println("�����أ� "+train.getDepStation()+"\t"+"Ŀ�ĵأ� "+train.getTerStation());
	        System.out.println("trainnumber"+"\t"+"ArrivalTime"+"\t"+"LeaveTime"+"\t"+"direction");	
	        	
//			while(rs.next()) {
//			String trainnumber = rs.getString("trainnumber");
//			String ArrTime = rs.getString("ArrivalTime");
//			String LefTime = rs.getString("LeaveTime");
//			String direction = rs.getString(Depstation+".direction");
//
//			System.out.println(trainnumber+"\t"+"\t"+ArrTime+"\t"+LefTime+"\t"+direction);
//			}
	        
			if(ActionContext.getContext().getSession().containsKey("alltrainList")){
				
				ActionContext.getContext().getSession().remove("alltrainList");
			}
			ActionContext.getContext().getSession().put("alltrainList",alltrainList);
		    
			return "success";
			}
	
}
