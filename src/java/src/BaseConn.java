package src;
import java.sql.*;
public class BaseConn {
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	public BaseConn() throws SQLException,ClassNotFoundException{
		String url = "jdbc:mysql://localhost:3306/admin_h";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,"root","root");
                        stmt = conn.createStatement();
	}

	public PreparedStatement preparedStatement(String sql) throws SQLException
	{
		try
		{
			ps = conn.prepareStatement(sql);
			return ps;
		}catch(SQLException e)
		{
			System.out.println("Error occured when Connect DataBase:"+e);
			throw e;
		}		
	}
//	public static Connection getConnection() {
//	 	//Class.forName("org.gjt.mm.mysql.Driver");
//		String driverClass ="com.mysql.jdbc.Driver";
//		String url = "jdbc:mysql://localhost:3306/classmanage";
//		String userName = "root";
//		String password ="123456";
//		
//		System.out.println(driverClass + "\t" + url + "\t" + userName + "\t" + password);
//		
//		Connection conn = null;
//		
//		try {
//			Class.forName(driverClass);
//			conn = DriverManager.getConnection(url, userName, password);
//		} catch (SQLException | ClassNotFoundException e) {
//		}
//		
//		return conn;
//	}
	  public ResultSet executeQuery(String sql) throws SQLException
	  {
	    rs = null;
	    try {
	      rs = stmt.executeQuery(sql);
	    }
	    catch (SQLException ex) {
	      System.out.println("Error occured when query database��" + ex);
	      throw ex;
	    }
	    return rs;
	  }
          public void execute(String sql) throws SQLException
	  {
	    try {
	     stmt.execute(sql);
	    }
	    catch (SQLException ex) {
	      System.out.println("Error occured when query database��" + ex);
	      throw ex;
	    }
	  }
	  public void executeUpdate(String sql) throws SQLException
	  {
	    try {
	      stmt.executeUpdate(sql);
	    }
	    catch (SQLException e) {
	      conn.rollback();
	      System.out.println("Error occured when update database��" + e);
	      throw e;
	    }
	  }  
	  public ResultSet executeQuery() throws SQLException
	  {
	    try {
	      return ps.executeQuery();
	    }
	    catch (SQLException e) {
	      System.out.println("Error occured when query database��" + e);
	      throw e;
	    }
	  }
//	  public int executeUpdate() throws SQLException
//	  {
//	    try {
//	      conn.setAutoCommit(false);
//	      int r = ps.executeUpdate();
//	      conn.commit();
//	      return r;
//	    }
//	    catch (SQLException e) {
//	      conn.rollback();
//	      System.out.println("Error occured when update database��" + e);
//	      throw e;
//	    }
//	  }
	  public boolean closeDB() throws SQLException
	  {
	    try {
	      if (this.rs != null)
	        rs.close();
	      if (this.stmt != null)
	        this.stmt.close();
	      if (this.ps != null)
	        this.ps.close();
	      if (this.conn != null)
	        conn.close();
	      return true;
	    }
	    catch (SQLException e) {
	      System.out.println("Error occured when close database��" + e);
	      throw e;
	    }
	  }	
}
