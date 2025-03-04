package JDBC_application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBC_Ex
{
	public static void main(String[] args)
	{
		try
		{
			//1.Register the driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","12345");
			System.out.println(con);
			//3.Create Statement
			Statement stmt=con.createStatement();
			//4.Execute query
			ResultSet rs=stmt.executeQuery("select * from emp");
			while(rs.next())
			{
				System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getInt(5));
			}								
		}
		catch(Exception e)
		{
			System.out.println(e);	
		}	
	}
}
