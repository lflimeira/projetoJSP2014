package bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.ClienteException;
import model.ResponsavelCompraException;
import model.VooException;
import to.ClienteTO;
import to.ResponsavelCompraTO;
import to.VooTO;
import dao.ClienteDAO;
import dao.ResponsavelCompraDAO;

public class ResponsavelCompraMysqlDaoImpl implements ResponsavelCompraDAO {

	@Override
	public Long cadastrar(ResponsavelCompraTO resCompraTO) throws ResponsavelCompraException {
		String sql = "insert into responsavelcompra ("
				+ "email, celular, bandeira, nomeTitular "
				+ ",cpf,numCartao,dataValidade,codigoSeguranca"
				+ ",banco,agencia,conta) "
				+ "values (?,?,?,?,?,?,?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement stm = null;
		try {
			conn = obtemConexao();
			stm = conn.prepareStatement(sql);

			stm.setString(1, resCompraTO.getEmail());
			stm.setString(2, resCompraTO.getCelular());
			stm.setString(3, resCompraTO.getBandeira());
			stm.setString(4, resCompraTO.getNomeTitular());
			stm.setString(5, resCompraTO.getCpf());
			stm.setString(6, resCompraTO.getNumCartao());
			stm.setString(7, resCompraTO.getDataValidade());
			stm.setString(8, resCompraTO.getCodigoSeguranca());
			stm.setString(9, resCompraTO.getBanco());
			stm.setString(10, resCompraTO.getAgencia());
			stm.setString(11, resCompraTO.getConta());

			stm.execute();

		} catch (SQLException e) {
			throw new ResponsavelCompraException(e);

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
		
		String sql = "SELECT MAX(i) FROM cliente";
		
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
	public ResponsavelCompraTO consultaUnica(int codigo) throws ResponsavelCompraException {
		// TODO Auto-generated method stub
		return null;
	}

	private Connection obtemConexao() throws SQLException {
		AcessoBanco acesso = new AcessoBanco();
		return acesso.obtemConexao();
	}

}
