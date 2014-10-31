package bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.CheckinDAO;
import model.AeronaveException;
import model.CheckinException;
import to.CheckinTO;
import to.ClienteTO;
import to.ResponsavelTO;
import to.VooTO;

public class CheckinMySQL implements CheckinDAO{
	
	public CheckinTO consultaValores(int codigoPassagem) throws CheckinException{
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		int idCliente = 0;
		int idVoo = 0;
		int idResponsavel = 0;
		String status = "nada";
		
		String sql = "SELECT * FROM passagem WHERE id = " + codigoPassagem;
		
		try {
			con = obtemConexao();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next()){
				idCliente = rs.getInt(2);
				idVoo = rs.getInt(3);
				idResponsavel = rs.getInt(4);
				status = rs.getString(7);			
			}
			
			
			
			
		} catch (SQLException e) {
			throw new CheckinException(e);
	
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
		
		String sqlCliente = "SELECT * FROM cliente WHERE id = "+ idCliente;
		
		ClienteTO clienteTO = new ClienteTO();
		
		try {
			con = obtemConexao();
			stmt = con.prepareStatement(sqlCliente);
			rs = stmt.executeQuery();
			
			while(rs.next()){
				clienteTO.setIdCliente(rs.getInt(1));
				clienteTO.setTipo(rs.getString(2));
				clienteTO.setTratamento(rs.getString(3));
				clienteTO.setNome(rs.getString(4));
				clienteTO.setSobrenome(rs.getString(5));
				clienteTO.setDataNascimento(rs.getString(6));
			}
			
		} catch (SQLException e) {
			throw new CheckinException(e);
	
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
		
		String sqlVoo = "SELECT * FROM voo WHERE codigo = "+ idVoo;
		
		VooTO vooTO = new VooTO();
		
	
		try {
			con = obtemConexao();
			stmt = con.prepareStatement(sqlVoo);
			rs = stmt.executeQuery();
			
			while(rs.next()){
				vooTO.setCodigo(idVoo);
				vooTO.setOrigem(rs.getString(2));
				vooTO.setDestino(rs.getString(3));
				vooTO.setData(rs.getString(4));
				vooTO.setHora(rs.getString(5));
				vooTO.setSituacao(rs.getString(6));
				vooTO.setValor(rs.getDouble(7));
				vooTO.setEscala1(rs.getString(8));
				vooTO.setEscala2(rs.getString(9));
				vooTO.setAeronave(rs.getInt(10));
			}
			
		} catch (SQLException e) {
			throw new CheckinException(e);
	
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
		
		String sqlResponsavel = "SELECT * FROM responsavel WHERE id = "+ idResponsavel;
		
		ResponsavelTO responsavelTO = new ResponsavelTO();
		
	
		try {
			con = obtemConexao();
			stmt = con.prepareStatement(sqlResponsavel);
			rs = stmt.executeQuery();
			
			while(rs.next()){
				responsavelTO.setId(rs.getInt(1));
				responsavelTO.setNome(rs.getString(2));
				responsavelTO.setTelefone(rs.getString(3));
				responsavelTO.setEmail(rs.getString(4));
			}
			
		} catch (SQLException e) {
			throw new CheckinException(e);
	
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
		
		CheckinTO checkinTO = new CheckinTO(codigoPassagem, clienteTO, vooTO, responsavelTO, status);
		
		return checkinTO;
	}
	
	public void efetuaCheckin(int codigoPassagem, int fileira, int coluna) throws CheckinException{
		
		Connection conn = null;
		PreparedStatement stm = null;
		
		String sql = "UPDATE passagem SET coluna = ?, fileira = ?, status = ? WHERE id = "+ codigoPassagem;
		
		try {
			conn = obtemConexao();
			stm = conn.prepareStatement(sql);
			
			stm.setInt(1, coluna);
			stm.setInt(2, fileira);
			stm.setString(3, "Checado");
			
			stm.execute();
		} catch (SQLException e) {
			throw new CheckinException(e);
	
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

		
	}
	
	private Connection obtemConexao() throws SQLException {
		AcessoBanco acesso = new AcessoBanco();
		return acesso.obtemConexao();
	}
	

}
