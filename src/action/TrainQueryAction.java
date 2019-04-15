package action;
import java.sql.ResultSet;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import bean.DBCon;
import bean.Person;
import bean.Train;

public class TrainQueryAction {
	private String TrainNumber;//车次
	private String ArrTime;//到达时间
	private String LeaveTime;//开车时间
	private String depStation;//定义用户出发站
	private String TerStation;//定义用户目的地
	private String depDate;//定义出发日期
	private String depTime;//定义出发时间
	private ResultSet rs;
public ResultSet getRs() {
		return rs;
	}
	public void setRs(ResultSet rs) {
		this.rs = rs;
	}
	//	构造函数
	public TrainQueryAction(){
		
	}
//get set 方法

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
	//默认方法
	public String execute()throws Exception{
		Train train=new Train("",depStation,TerStation,"","");
			ResultSet rs = DBCon.TrainQuery(train);
			while(rs.next()) {
			String trainnumber = rs.getString("trainnumber");
			String ArrTime = rs.getString("ArrivalTime");
			String LefTime = rs.getString("LeaveTime");
			System.out.println(trainnumber+"\t"+"\t"+ArrTime+"\t"+LefTime);
			}
		
			return "success";
			}
	
}
