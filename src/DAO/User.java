package DAO;

public class User {
	private String id;
	private String name;
	private String password;
	private String role;
	private String place;
	private String comment;
	private int mobile;
	
	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getId(){
		return id;
	}
	
	public String getName(){
		return name;
	}
	
	public String getPassword(){
		return password;
	}
	
	public String getRole(){
		return role;
	}
	
	public void setId(String id){
		this.id = id;
	}
	
	public void setName(String name){
		this.name=name;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public void setRole(String role){
		this.role = role;
	}
	
	public void setPlace(String place){
		this.place = place;
	}
	
	public String getPlace(){
		return place;
	}
}
