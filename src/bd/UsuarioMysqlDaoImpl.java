package bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bd.AcessoBanco;
import dao.UsuarioDAO;

public class UsuarioMysqlDaoImpl implements UsuarioDAO{
	
	public ArrayList realizarLogin(String login, String senha) {

		ArrayList resultadoPesquisa = new ArrayList();

		String sqlSelect;

		sqlSelect = "SELECT nome,nivelAcesso FROM usuario WHERE login LIKE '" + login
				+ "' AND senha LIKE '" + senha + "'";

		PreparedStatement stm = null;
		ResultSet rs = null;
		Connection conn = null;

		try {
			AcessoBanco bd = new AcessoBanco();
			conn = bd.obtemConexao();

			stm = conn.prepareStatement(sqlSelect);

			rs = stm.executeQuery();

			while (rs.next()) {
				resultadoPesquisa.add(rs.getString(1));
				resultadoPesquisa.add(rs.getInt(2));
			}
			return resultadoPesquisa;

		} catch (Exception e) {
			e.printStackTrace();
			return resultadoPesquisa;	

		} finally {
			if (stm != null) {
				try {
					stm.close();
				} catch (SQLException e1) {
					
				}
			}
		}
			
	}

}
