package src;
import java.sql.*;
public class SCheckLogin {

	public String schecklogin(String userName, String userPassword)
			throws SQLException, ClassNotFoundException {
		BaseConn conn = null;
		try {
			conn = new BaseConn();
			String sql = "select * from student where sid=?";
			PreparedStatement ps = conn.preparedStatement(sql);
			ps.setString(1, userName);
			ResultSet rs = conn.executeQuery();
			if (rs.next()) {
				if (rs.getString("studentpwd").equals(userPassword)) {
					return "SUCCESS_LOGIN";
				} else
					return "WRONG_PASSWORD";
			} else
				return "NONE_USER";
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw ex;
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
			throw ex;
		} finally {
			conn.closeDB();
		}
	}
//	public boolean saveToDataBase(String userName, String userPassword)
//			throws SQLException, ClassNotFoundException {
//		BaseConn conn = null;
//		try {
//			conn = new BaseConn();
//			String sql = "insert into userinfo(userName,userPassword) values(?,?)";
//			PreparedStatement ps = conn.preparedStatement(sql);
//			ps.setString(1, userName);
//			ps.setString(2, userPassword);
//			conn.executeUpdate();
//			return true;
//		} catch (SQLException ex) {
//			ex.printStackTrace();
//			throw ex;
//		} catch (ClassNotFoundException ex) {
//			ex.printStackTrace();
//			throw ex;
//		} finally {
//			conn.closeDB(); 
//		}
//	}
}
