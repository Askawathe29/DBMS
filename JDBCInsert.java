package JDBC_application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCInsert
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
			PreparedStatement ps=con.prepareStatement("insert into person values (?,?,?)");
			ps.setInt(1, 1);
			ps.setString(2, "Akshata");
			ps.setInt(3, 21);
			ps.setInt(1, 2);
			ps.setString(2, "Anuradha");
			ps.setInt(3, 21);
			ps.setInt(1, 3);
			ps.setString(2, "Apeksha");
			ps.setInt(3, 23);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+" record inserted successfully");
			//5.Close connection
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);	
		}	

	}
}
