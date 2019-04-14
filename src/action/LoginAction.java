package action;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import bean.DBCon;

public class LoginAction {
	private String name;
	private String password;
//	构造函数
	public LoginAction(){
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//默认方法
	public String execute()throws Exception{
		if(name!=null && password!=null){
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
