package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AcessoBanco {

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}

	public Connection obtemConexao() throws SQLException{
		return DriverManager.getConnection("jdbc:mysql://localhost/aeroporto","root", "");
	}

}

