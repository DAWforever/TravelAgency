package Controller;

import java.util.*;
import java.sql.*;

public class WaitingPurchasingList {
	public static List<String> returnList(boolean one)throws Exception{
		List<String> res = new ArrayList<>();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useSSL=false", "root","root");
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery("SELECT * FROM travel.purchasinglist where state"+(one==true?"":"!")+"=1");
        while(rs.next()){
        	String s = rs.getString("id")+","+rs.getString("product")+","+rs.getString("package")+","+rs.getString("state");
        	res.add(s);
        }
        return res;
	}
	public static List<String> returnStaffList(boolean one)throws Exception{
		List<String> res = new ArrayList<>();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useSSL=false", "root","root");
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery("SELECT * FROM travel.user where place='Area A store'");
        while(rs.next()){
        	String s = rs.getString("Name")+","+rs.getString("Role")+","+rs.getString("Comment")+","+rs.getString("State");
        	res.add(s);
        }
        return res;
	}
	public static List<String> returnPlanList(boolean one)throws Exception{
		List<String> res = new ArrayList<>();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useSSL=false", "root","root");
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery("SELECT * FROM travel.plan where label='"+((one==true)?"plan":"market")+"'");
        while(rs.next()){
        	String s = rs.getString("topic")+"#"+rs.getString("content");
        	res.add(s);
        }
        return res;
	}public static List<String> returnOrderList(boolean one)throws Exception{
		List<String> res = new ArrayList<>();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useSSL=false", "root","root");
        Statement stm = conn.createStatement();
        ResultSet rs = stm.executeQuery("SELECT * FROM travel.order ");
        while(rs.next()){
        	String s = rs.getString("id")+"#"+rs.getString("cust_name")+"#"+rs.getString("package")+"#"+rs.getString("depart_time")+"---"+rs.getString("back_time")+"#"+rs.getString("income");
        	res.add(s);
        }
        return res;
	}
}
