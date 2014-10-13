package bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	public List<AeronaveTO> consultar() throws AeronaveException{
		ArrayList<AeronaveTO> resultado = new ArrayList<AeronaveTO>();
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM aeronave ORDER BY codigo;";
		
		try {
			con = obtemConexao();
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			while (rs.next()) {
				
				AeronaveTO aeronave = new AeronaveTO();
				
				//Insere dados do Banco
				aeronave.setCodigo(rs.getInt(1));
				aeronave.setNomeAeronave(rs.getString(2));
				aeronave.setTipoAeronave(rs.getString(3));
				aeronave.setColunas(rs.getInt(4));
				aeronave.setFileiras(rs.getInt(5));
				
				//Adiciona a Lista
				resultado.add(aeronave);
			}

			return resultado;
			
		} catch (SQLException e) {
			throw new AeronaveException(e);
	
		} finally {
			if (rs != null) {
				try {
					rs.close();
				}catch(SQLException sqle){
					//
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				}catch(SQLException sqle){
					//
				}
			}
			if (con != null) {
				try {
					con.close();
				}catch(SQLException sqle){
					//
				}
			}			
		}

	}
	
	
	
	private Connection obtemConexao() throws SQLException {
		AcessoBanco acesso = new AcessoBanco();
		return acesso.obtemConexao();
	}

}
