package beans;

public class BookBean {
	private String bID;
	private String bTitle;
	private String bAuthor;
	private String bCount;
	private String bDescription;
	private String bPublisher;
	private String bLanguage;
	private String bTime;
	
	public BookBean(){
		bID=null;
		bTitle=null;;
		bAuthor=null;
		bCount=null;
		bDescription=null;
		bPublisher=null;
		bLanguage=null;
		bTime=null;
	}

	public String getbID() {
		return bID;
	}

	public void setbID(String bID) {
		this.bID = bID;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbAuthor() {
		return bAuthor;
	}

	public void setbAuthor(String bAuthor) {
		this.bAuthor = bAuthor;
	}

	public String getbCount() {
		return bCount;
	}

	public void setbCount(String bCount) {
		this.bCount = bCount;
	}

	public String getbDescription() {
		return bDescription;
	}

	public void setbDescription(String bDescription) {
		this.bDescription = bDescription;
	}

	public String getbPublisher() {
		return bPublisher;
	}

	public void setbPublisher(String bPublisher) {
		this.bPublisher = bPublisher;
	}

	public String getbLanguage() {
		return bLanguage;
	}

	public void setbLanguage(String bLanguage) {
		this.bLanguage = bLanguage;
	}

	public String getbTime() {
		return bTime;
	}

	public void setbTime(String bTime) {
		this.bTime = bTime;
	}
}