package util;
import java.sql.*;
public class DBAccess {
	private String driver = "com.mysql.jdbc.Driver";
	private Connection conn;
	private Statement stm;
	private ResultSet rs; 
    public boolean createConn() {  
        boolean b = false;  
        try {  
            Class.forName(driver);// 加载Oracle驱动程序  
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useSSL=false", "root","root");  
            b = true;  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }// 获取连接  
        catch (ClassNotFoundException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return b;  
    }  
    
    public boolean update(String sql){  
        boolean b = false;  
        try {  
            stm = conn.createStatement();  
            stm.execute(sql);  
            b = true;  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return b;  
    }  
    
  //查询  
    public void query(String sql){  
        try {  
            stm = conn.createStatement();  
            rs = stm.executeQuery(sql);  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
    }  
    
    public boolean next(){  
        boolean b = false;  
        try {  
            if(rs.next()){  
                b = true;  
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return b;  
    }  
    
    public String getValue(String field) {  
        String value = null;  
        try {  
            if (rs != null) {  
                value = rs.getString(field);  
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return value;  
    }  
    
    //关闭连接  
    public void closeConn() {  
        try {  
            if (conn != null) {  
                conn.close();  
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
    }  
    //关闭statement  
    public void closeStm() {  
        try {  
            if (stm != null) {  
                stm.close();  
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
    }  
    //关闭ResultSet  
    public void closeRs() {  
        try {  
            if (rs != null) {  
                rs.close();  
            }  
        } catch (SQLException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
    }

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public Statement getStm() {
		return stm;
	}

	public void setStm(Statement stm) {
		this.stm = stm;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}  
	
//    public static void main(String args){
//    	DBAccess d = new DBAccess();
//    	d.createConn();
//    	d.query("select * from travel.user");
//    	while(d.next())
//    		System.out.println(d.getValue("Name")+" "+d.getValue("Password")+" "+d.getValue("Role"));
//    }
    
}
