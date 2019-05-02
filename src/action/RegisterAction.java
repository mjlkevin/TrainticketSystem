package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import bean.*;
import java.util.*;

public class RegisterAction extends ActionSupport{
	String username;
	String password;
	String confirm_password;
	String phonenumber;
	String email;
	Map session;
	
	public RegisterAction(){
		//»ñµÃsession
		session=ActionContext.getContext().getSession();
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirm_password() {
		return confirm_password;
	}

	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String register(){
		if(username!=null && password!=null){
			Person person=new Person(username,password,"","",phonenumber,email);
			if(DBCon.registerUser(person)){
				session.put("username", username);
				return SUCCESS;
			}else{
				return INPUT;
			}
		}else{
			return INPUT;
		}
	}
}
