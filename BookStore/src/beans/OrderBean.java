package beans;

public class OrderBean {
	private String oID;
	private String uID;
	private String aID;
	private String oTime;
	private String oBookIDs;
	private String oBookNums;
	private String oStatus;

	public OrderBean(){
		oID=null;
		uID=null;
		aID=null;
		oTime=null;
		oBookIDs=null;
		oBookNums=null;
		oStatus=null;
	}

	public String getoID() {
		return oID;
	}

	public void setoID(String oID) {
		this.oID = oID;
	}

	public String getuID() {
		return uID;
	}

	public void setuID(String uID) {
		this.uID = uID;
	}

	public String getaID() {
		return aID;
	}

	public void setaID(String aID) {
		this.aID = aID;
	}

	public String getoTime() {
		return oTime;
	}

	public void setoTime(String oTime) {
		this.oTime = oTime;
	}

	public String getoBookIDs() {
		return oBookIDs;
	}

	public void setoBookIDs(String oBookIDs) {
		this.oBookIDs = oBookIDs;
	}

	public String getoBookNums() {
		return oBookNums;
	}

	public void setoBookNums(String oBookNums) {
		this.oBookNums = oBookNums;
	}

	public String getoStatus() {
		return oStatus;
	}

	public void setoStatus(String oStatus) {
		this.oStatus = oStatus;
	}
	
}