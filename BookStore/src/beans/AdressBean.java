package beans;

public class AdressBean {
	private String aID;
	private String uID;
	private String aAdress;
	
	public AdressBean(){
		aID=null;
		uID=null;
		aAdress=null;
	}

	public String getaID() {
		return aID;
	}

	public void setaID(String aID) {
		this.aID = aID;
	}

	public String getuID() {
		return uID;
	}

	public void setuID(String uID) {
		this.uID = uID;
	}

	public String getaAdress() {
		return aAdress;
	}

	public void setaAdress(String aAdress) {
		this.aAdress = aAdress;
	}
}
