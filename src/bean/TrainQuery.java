package bean;

public class TrainQuery {

	private String trainnumber;
	private String ArrivalTime;
	private String LeaveTime;
	
	public TrainQuery(){
		
	}
	public TrainQuery(String trainnumber ,String ArrivalTime ,String LeaveTime){
		this.trainnumber = trainnumber;
		this.ArrivalTime = ArrivalTime;
		this.LeaveTime   = LeaveTime;
	}
	public String getTrainnumber() {
		return trainnumber;
	}
	public void setTrainnumber(String trainnumber) {
		this.trainnumber = trainnumber;
	}
	public String getArrivalTime() {
		return ArrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		ArrivalTime = arrivalTime;
	}
	public String getLeaveTime() {
		return LeaveTime;
	}
	public void setLeaveTime(String leaveTime) {
		LeaveTime = leaveTime;
	}
	
}
