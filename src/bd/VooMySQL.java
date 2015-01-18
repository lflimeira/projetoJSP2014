package bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.*;
import to.VooTO;
import model.VooException;

public class VooMySQL implements VooDAO {

	public int cadastrar(VooTO vooTO) throws VooException{
		String sql = "insert into voo ("
				+ "origem, destino, "
				+ "dia,hora,situacao,valor,"
				+ "cod_aeronave) "
				+ "values (?,?,?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement stm = null;
		try {
			conn = obtemConexao();
			stm = conn.prepareStatement(sql);

			stm.setString(1, vooTO.getOrigem());
			stm.setString(2, vooTO.getDestino());
			stm.setString(3, vooTO.getData());
			stm.setString(4, vooTO.getHora());
			stm.setString(5, vooTO.getSituacao());
			stm.setDouble(6, vooTO.getValor());
			stm.setInt(7, vooTO.getAeronave());

			stm.execute();

		} catch (SQLException e) {
			throw new VooException(e);

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

		return 0;
	}
	
	public List<VooTO> consultar() throws VooException{
		ArrayList<VooTO> resultado = new ArrayList<VooTO>();
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM voo ORDER BY codigo;";
		
		try {
			con = obtemConexao();
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			while (rs.next()) {
				
				VooTO voo = new VooTO();
				
				//Insere dados do Banco
				voo.setCodigo(rs.getInt(1));
				voo.setOrigem(rs.getString(2));
				voo.setDestino(rs.getString(3));
				voo.setData(rs.getString(4));
				voo.setHora(rs.getString(5));
				voo.setSituacao(rs.getString(6));
				voo.setValor(rs.getDouble(7));
				voo.setEscala1(rs.getString(8));
				voo.setEscala2(rs.getString(9));
				voo.setAeronave(rs.getInt(10));
				
				//Adiciona a Lista
				resultado.add(voo);
			}

			return resultado;
			
		} catch (SQLException e) {
			throw new VooException(e);
	
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
	
	public VooTO consultaUnica(int codigo) throws VooException{
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM voo WHERE codigo = " + codigo;
		
		try {
			con = obtemConexao();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			
			VooTO vooTO = new VooTO();
			while (rs.next()) {
				//Insere dados do Banco
				vooTO.setCodigo(rs.getInt(1));
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
			return vooTO;
			
		} catch (SQLException e) {
			throw new VooException(e);
	
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
public List<VooTO> consultaVooVolta(String ida, String volta) throws VooException{
		
	ArrayList<VooTO> resultado = new ArrayList<VooTO>();
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String sql = "SELECT * FROM voo WHERE origem = '"+ volta + "' AND destino = '" + ida + "' ORDER BY codigo;";
	try {
		con = obtemConexao();
		stmt = con.prepareStatement(sql);
		
		rs = stmt.executeQuery();
		
		while (rs.next()) {
			
			VooTO voo = new VooTO();
			
			//Insere dados do Banco
			voo.setCodigo(rs.getInt(1));
			voo.setOrigem(rs.getString(2));
			voo.setDestino(rs.getString(3));
			voo.setData(rs.getString(4));
			voo.setHora(rs.getString(5));
			voo.setSituacao(rs.getString(6));
			voo.setValor(rs.getDouble(7));
			voo.setEscala1(rs.getString(8));
			voo.setEscala2(rs.getString(9));
			voo.setAeronave(rs.getInt(10));
			
			//Adiciona a Lista
			resultado.add(voo);
		}

		return resultado;
		
	} catch (SQLException e) {
		throw new VooException(e);

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
	public void alterar(VooTO vooTO)  throws VooException{
		String sql = "UPDATE voo set codigo = ?, origem =  ?, destino = ?, dia = ?, hora = ?, "
				+ "situacao = ?, valor = ?, pri_escala = ?, seg_escala = ?,cod_aeronave =?  WHERE codigo = " + vooTO.getCodigo();
		
		Connection conn = null;
		PreparedStatement stm = null;
		
		try {
			conn = obtemConexao();
			stm = conn.prepareStatement(sql);

			stm.setInt(1,    vooTO.getCodigo());
			stm.setString(2, vooTO.getOrigem());
			stm.setString(3, vooTO.getDestino());
			stm.setString(4, vooTO.getData());
			stm.setString(5, vooTO.getHora());
			stm.setString(6, vooTO.getSituacao());
			stm.setDouble(7, vooTO.getValor());
			stm.setString(8, vooTO.getEscala1());
			stm.setString(9, vooTO.getEscala2());
			stm.setInt(10, vooTO.getAeronave());

			stm.execute();

		} catch (SQLException e) {
			throw new VooException(e);

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
	
	public void excluir(int codigo) throws VooException{
		String sql = "DELETE FROM voo WHERE codigo = "+codigo;
		Connection conn = null;
		PreparedStatement stm = null;
		try{
			conn = obtemConexao();
			
			stm = conn.prepareStatement(sql);
			
			stm.executeUpdate();
			
		} catch (SQLException e) {
			throw new VooException(e);

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
