package bean;
//POJO¿‡
public class Train {
	private String TrainNumber;
	private String depStation;
	private String TerStation;
	private String PasStation;
	private String depTime;
	private String ArrTime;
	public Train(){
		
	}
	public Train(String TrainNumber,String depStation,String TerStation,String PasStation,String depTime,String ArrTime){
		this.TrainNumber=TrainNumber;
		this.depStation=depStation;
		this.TerStation=TerStation;
		this.PasStation=PasStation;
		this.depTime=depTime;
		this.ArrTime=ArrTime;
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
	public String getPasStation() {
		return PasStation;
	}
	public void setPasStation(String pasStation) {
		PasStation = pasStation;
	}
	public String getDepTime() {
		return depTime;
	}
	public void setDepTime(String depTime) {
		this.depTime = depTime;
	}
	public String getArrTime() {
		return ArrTime;
	}
	public void setArrTime(String arrTime) {
		ArrTime = arrTime;
	}
	
}
