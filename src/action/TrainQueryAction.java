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
	private String TrainNumber;//车次
	private String ArrTime;//到达时间
	private String LeaveTime;//开车时间
	private String depStation;//定义用户出发站
	private String TerStation;//定义用户目的地
	private String depDate;//定义出发日期
	private String depTime;//定义出发时间
	private String Direction;//方向
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
	//默认方法
	public String execute()throws Exception{
		//实例化一个Train对象，按照顺序传入参数
		Train train=new Train("",depStation,TerStation,"","",Direction);
		String Depstation = train.getDepStation();
		
		//根据传入参数所实例化的这个Train对象，到数据库中进行查询
//		    ResultSet rs = DBCon.TrainQuery(train);
		    List alltrainList = DBCon.TrainQuery(train);
			Depstation = DBCon.chooseTable(Depstation);
			System.out.println(alltrainList);
			System.out.println("出发地： "+train.getDepStation()+"\t"+"目的地： "+train.getTerStation());
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
