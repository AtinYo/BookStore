package beans;
public class UserBean{
	private String uID;//beansװ����ͬһ��string,���Ǳ��ﲻһ����string
	private String uName;
	private String uAccount;
	private String uPassword;
	private String uType;//0�����û�,1�������Ա
	
	public UserBean(){
		uID=null;
		uName=null;
		uAccount=null;
		uPassword=null;
		uType=null;
	}

	public String getuID() {
		return uID;
	}

	public void setuID(String uID) {
		this.uID = uID;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuAccount() {
		return uAccount;
	}

	public void setuAccount(String uAccount) {
		this.uAccount = uAccount;
	}

	public String getuPassword() {
		return uPassword;
	}

	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}

	public String getuType() {
		return uType;
	}

	public void setuType(String uType) {
		this.uType = uType;
	}
}
