package beans;

public class ClassficationBean {
	private String cID;
	private String cName;
	
	public ClassficationBean(){
		cID=null;
		cName=null;
	}
	
	public String getcID() {
		return cID;
	}
	
	public void setcID(String cID) {
		this.cID = cID;
	}
	
	public String getcName() {
		return cName;
	}
	
	public void setcName(String cName) {
		this.cName = cName;
	}
	
}
