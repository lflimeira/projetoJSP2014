package bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.ClienteException;
import model.VooException;
import to.ClienteTO;
import to.VooTO;
import dao.ClienteDAO;

public class ClienteMysqlDaoImpl implements ClienteDAO {

	@Override
	public Long cadastrar(ClienteTO clienteTO) throws ClienteException {
		String sql = "insert into cliente ("
				+ "tipo, tratamento, "
				+ "nome,sobrenome,dataNascimento) "
				+ "values (?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement stm = null;
		try {
			conn = obtemConexao();
			stm = conn.prepareStatement(sql);

			stm.setString(   1, clienteTO.getTipo());
			stm.setString(2, clienteTO.getTratamento());
			stm.setString(3, clienteTO.getNome());
			stm.setString(4, clienteTO.getSobrenome());
			stm.setString(5, clienteTO.getDataNascimento());

			stm.execute();

		} catch (SQLException e) {
			throw new ClienteException(e);

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
		
		int idClienteCadastrado = consultarUltimoCadastrado();
		

		return (long) idClienteCadastrado;
	}

	private int consultarUltimoCadastrado() {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT MAX(idCliente) FROM cliente";
		
		try {
			con = obtemConexao();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			
			int idCliente = 0;
			while (rs.next()) {
				//Insere dados do Banco
				idCliente = rs.getInt(1);
					
			}
			return idCliente;
			
		} catch (SQLException e) {
			
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
		return 0;
	}

	@Override
	public ClienteTO consultaUnica(int codigo) throws ClienteException {
		// TODO Auto-generated method stub
		return null;
	}

	private Connection obtemConexao() throws SQLException {
		AcessoBanco acesso = new AcessoBanco();
		return acesso.obtemConexao();
	}

}
