package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import bean.*;
import java.util.*;

public class RegLogAction extends ActionSupport{
	String rname;
	String rpassword;
	String rsex;
	String rage;
	String remail;
	String lname;
	String lpassword;
	Map session;
	
	public RegLogAction(){
		//»ñµÃsession
		session=ActionContext.getContext().getSession();
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRpassword() {
		return rpassword;
	}

	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}

	public String getRsex() {
		return rsex;
	}

	public void setRsex(String rsex) {
		this.rsex = rsex;
	}

	public String getRage() {
		return rage;
	}

	public void setRage(String rage) {
		this.rage = rage;
	}

	public String getRemail() {
		return remail;
	}

	public void setRemail(String remail) {
		this.remail = remail;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getLpassword() {
		return lpassword;
	}

	public void setLpassword(String lpassword) {
		this.lpassword = lpassword;
	}
	
	public String login(){
		if(lname!=null && lpassword!=null){
			if(DBCon.validateLogin(lname, lpassword)){
				session.put("loginUser", lname);
				return SUCCESS;
			}else{
				return INPUT;
			}
		}else{
			return INPUT;
		}
	}
	
	public String register(){
		if(rname!=null && rpassword!=null 
		&& rsex!=null && rage!=null && remail!=null){
			Person person=new Person(rname,rpassword,rsex,rage,remail);
			if(DBCon.registerUser(person)){
				session.put("rname", rname);
				return SUCCESS;
			}else{
				return INPUT;
			}
		}else{
			return INPUT;
		}
	}
}
