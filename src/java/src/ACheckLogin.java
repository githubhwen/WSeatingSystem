package src;
import java.sql.*;
public class ACheckLogin {

	public String achecklogin(String userName, String userPassword)
			throws SQLException, ClassNotFoundException {
		BaseConn conn = null;
		try {
			conn = new BaseConn();
			String sql = "select * from admin where admin_num=?";
			PreparedStatement ps = conn.preparedStatement(sql);
			ps.setString(1, userName);//id
			ResultSet rs = conn.executeQuery();
			if (rs.next()) {
				if (rs.getString("password").equals(userPassword)) {
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
}
