package beans;
public class UserBean{
	private String uID;
	private String uName;
	private String uAccount;
	private String uPassWord;
	private String uType;
	
	public UserBean(){
		uID=null;
		uName=null;
		uAccount=null;
		uPassWord=null;
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

	public String getuPassWord() {
		return uPassWord;
	}

	public void setuPassWord(String uPassWord) {
		this.uPassWord = uPassWord;
	}

	public String getuType() {
		return uType;
	}

	public void setuType(String uType) {
		this.uType = uType;
	}
}