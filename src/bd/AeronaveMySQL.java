package bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.AeronaveDAO;
import to.AeronaveTO;
import model.AeronaveException;

public class AeronaveMySQL implements AeronaveDAO {

	public Long cadastrar(AeronaveTO aeronaveTO) throws AeronaveException{
		String sql = "INSERT INTO aeronave("
				+ "codigo, nomeAeronave, tipoAeronave, colunas, fileiras)"
				+ "VALUES (?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement stm = null;
		try {
			conn = obtemConexao();
			stm = conn.prepareStatement(sql);

			stm.setInt(1, aeronaveTO.getCodigo());
			stm.setString(2, aeronaveTO.getNomeAeronave());
			stm.setString(3, aeronaveTO.getTipoAeronave());
			stm.setInt(4, aeronaveTO.getColunas());
			stm.setInt(5, aeronaveTO.getFileiras());

			stm.execute();

		} catch (SQLException e) {
			throw new AeronaveException(e);

		} finally {
			if (stm != null) {
				try {
					stm.close();
				} catch (SQLException e) {
					//
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					//
				}
			}
		}

		return null;
	}
	
	
	
	private Connection obtemConexao() throws SQLException {
		AcessoBanco acesso = new AcessoBanco();
		return acesso.obtemConexao();
	}

}
