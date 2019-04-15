package bean;
//POJO¿‡
public class Train {
	private String TrainNumber;
	private String depStation;
	private String TerStation;
	private String ArrTime;
	private String LeaveTime;
	public Train(){
		
	}
	public Train(String TrainNumber,String depStation,String TerStation,String ArrTime,String LeaveTime){
		this.TrainNumber=TrainNumber;
		this.depStation=depStation;
		this.TerStation=TerStation;
		this.ArrTime=ArrTime;
		this.LeaveTime = LeaveTime;
	}
	public String getLeaveTime() {
		return LeaveTime;
	}
	public void setLeaveTime(String leaveTime) {
		LeaveTime = leaveTime;
	}
	public String getTrainNumber() {
		return TrainNumber;
	}
	public void setTrainNumber(String trainNumber) {
		TrainNumber = trainNumber;
	}
	public String getDepStation() {
		return depStation;
	}
	public void setDepStation(String depStation) {
		this.depStation = depStation;
	}
	public String getTerStation() {
		return TerStation;
	}
	public void setTerStation(String terStation) {
		TerStation = terStation;
	}
	public String getArrTime() {
		return ArrTime;
	}
	public void setArrTime(String arrTime) {
		ArrTime = arrTime;
	}
	
}
