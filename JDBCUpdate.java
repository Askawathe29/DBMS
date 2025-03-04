package JDBC_application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCUpdate
{
	public static void main(String[] args) 
	{
		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");//oracle.jdbc.driver.OracleDriver
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","Praj@2811");
			System.out.println(con);
			//3.create statement
			PreparedStatement ps=con.prepareStatement(null);
			
		}
		catch(Exception e)
		{
			
		}

	}
}
