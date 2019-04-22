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
	private String Direction;//方向

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
	public String getDirection() {
		return Direction;
	}
	public void setDirection(String direction) {
		Direction = direction;
	}
	//默认方法
	public String execute()throws Exception{
		//实例化一个Train对象，按照顺序传入参数
		Train train=new Train("",depStation,TerStation,"","",Direction);
		
		String Depstation = train.getDepStation();
		
		//根据传入参数所实例化的这个Train对象，到数据库中进行查询
			ResultSet rs = DBCon.TrainQuery(train);
			System.out.println(Depstation);
			Depstation = DBCon.chooseTable(Depstation);
			System.out.println(Depstation);
			
			while(rs.next()) {
			String trainnumber = rs.getString("trainnumber");
			String ArrTime = rs.getString("ArrivalTime");
			String LefTime = rs.getString("LeaveTime");
			String direction = rs.getString(Depstation+".direction");
			System.out.println(trainnumber+"\t"+"\t"+ArrTime+"\t"+LefTime+"\t"+direction);
			}
		
			return "success";
			}
	
}
