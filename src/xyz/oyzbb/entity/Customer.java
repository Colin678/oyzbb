package xyz.oyzbb.entity;

public class Customer {
	private int cid;
	private String cname;
	private String cpassword;
	
	public Customer() {
	}

	public Customer(int cid, String cname, String cpassword) {
		this.cid = cid;
		this.cname = cname;
		this.cpassword = cpassword;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	
	
	
}
