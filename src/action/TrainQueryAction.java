package action;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import bean.DBCon;

public class TrainQueryAction {
	private String depStation;//定义始发站
	private String TerStation;//定义终点站
	private String PasStation;//定义经停站
//	构造函数
	public TrainQueryAction(){
		
	}
//get set 方法
	public String getdepStation() {
		return depStation;
	}
	public void setName(String depStation) {
		this.depStation = depStation;
	}
	public String getTerminus() {
		return TerStation;
	}
	public void setTerminus(String Terminus) {
		this.TerStation = Terminus;
	}
	//默认方法
	public String execute()throws Exception{
		if(depStation!=null && TerStation!=null){
			if(DBCon.validateLogin(name, password)){
				//保存当前的登录用户
				Map session=ActionContext.getContext().getSession();
				session.put("loginUser", getName());
				return "success";
			}else{
				return "input";
			}
		}else{
			return "input";
		}
	}
}
