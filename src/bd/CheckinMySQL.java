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

public class CheckinMySQL implements CheckinDAO{
	
	public CheckinTO consultaValores(int codigoPassagem) throws CheckinException{
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		int idCliente = 0;
		int idVoo = 0;
		int idResponsavel = 0;
		String status;
		
		String sql = "SELECT * FROM passagem WHERE codigo = " + codigoPassagem;
		
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
		
		String sqlCliente = "SELECT * FROM cliente WHERE codigo = "+ idCliente;
		
		ClienteTO clienteTO = new ClienteTO();
		
		
		
		CheckinTO checkinTO = null;
		
		return checkinTO;
	}
	private Connection obtemConexao() throws SQLException {
		AcessoBanco acesso = new AcessoBanco();
		return acesso.obtemConexao();
	}
	

}
