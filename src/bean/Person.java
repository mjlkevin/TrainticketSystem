package bean;
//POJO¿‡
public class Person {
	private String name;
	private String password;
	private String sex;
	private String age;
	private String email;
	private String phonenumber;

	public Person(){
		
	}
	public Person(String name,String password,String sex,String age,String phonenumber,String email){
		this.name = name;
		this.password = password;
		this.sex = sex;
		this.age = age;
		this.phonenumber = phonenumber;
		this.email = email;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
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
	
}
