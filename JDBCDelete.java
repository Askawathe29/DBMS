package JDBC_application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCDelete
{
	public static void main(String[] args) 
	{
		try
		{
			//1.Register the driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/akshu","root","12345");
			System.out.println(con);
			//3.Create Statement
			PreparedStatement ps=con.prepareStatement("delete from emp where id=?");
			ps.setInt(1, 7);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+" record deleted successfully");
			//5.Close connection
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
