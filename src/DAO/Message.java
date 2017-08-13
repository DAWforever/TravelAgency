package DAO;

public class Message {
	private int id;
	private String date;
	private String from;
	private String to;
	private String level;
	private String content;
	
	public void setId(int id){
		this.id = id;
	}
	
	public int getId(){
		return id;
	}
	
	public void setDate(String date){
		this.date = date;
	}
	
	public String getDate(){
		return date;
	}
	
	public void setFrom(String from){
		this.from = from;
	}
	
	public String getFrom(){
		return from;
	}
	
	public void setTo(String to){
		this.to = to;
	}
	
	public String getTo(){
		return to;
	}
	
	public String getLevel(){
		return level;
	}
	
	public void setLevel(String level){
		this.level = level;
	}
	
	public void setContent(String content){
		this.content = content;
	}
	
	public String getContent(){
		return content;
	}
	
}
