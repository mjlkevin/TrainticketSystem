package action;
import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import bean.DBCon;

public class TrainQueryAction {
	private String depStation;//����ʼ��վ
	private String TerStation;//�����յ�վ
	private String PasStation;//���徭ͣվ
//	���캯��
	public TrainQueryAction(){
		
	}
//get set ����
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
	//Ĭ�Ϸ���
	public String execute()throws Exception{
		if(depStation!=null && TerStation!=null){
			if(DBCon.validateLogin(name, password)){
				//���浱ǰ�ĵ�¼�û�
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
