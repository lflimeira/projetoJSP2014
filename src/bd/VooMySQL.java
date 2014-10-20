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

	public Long cadastrar(VooTO vooTO) throws VooException{
		String sql = "insert into voo ("
				+ "codigo, origem, destino, "
				+ "dia,hora,situacao,pri_escala,"
				+ "seg_escala,cod_aeronave) "
				+ "values (?,?,?,?,?,?,?,?,?)";

		Connection conn = null;
		PreparedStatement stm = null;
		try {
			conn = obtemConexao();
			stm = conn.prepareStatement(sql);

			stm.setInt(   1, vooTO.getCodigo());
			stm.setString(2, vooTO.getOrigem());
			stm.setString(3, vooTO.getDestino());
			stm.setString(4, vooTO.getData());
			stm.setString(5, vooTO.getHora());
			stm.setString(6, vooTO.getSituacao());
			stm.setString(7, vooTO.getEscala1());
			stm.setString(8, vooTO.getEscala2());
			stm.setInt(9, vooTO.getAeronave());

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

		return null;
	}
	
	public List<VooTO> consultar() throws VooException{
		ArrayList<VooTO> resultado = new ArrayList<VooTO>();
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT codigo,origem,destino,situacao FROM voo ORDER BY codigo;";
		
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
				voo.setSituacao(rs.getString(4));
				
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
				vooTO.setEscala1(rs.getString(7));
				vooTO.setEscala2(rs.getString(8));
				vooTO.setAeronave(rs.getInt(9));
				
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
	
	public void alterar(VooTO vooTO)  throws VooException{
		String sql = "UPDATE voo set codigo = ?, origem =  ?, destino = ?, data = ?, hora = ?, "
				+ "situacao = ?, pri_escala = ?, seg_escala = ?,cod_aeronave =?  WHERE codigo = " + vooTO.getCodigo();
		
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
			stm.setString(7, vooTO.getEscala1());
			stm.setString(8, vooTO.getEscala2());
			stm.setInt(9, vooTO.getAeronave());

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



//package dao.impl;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//import model.*;
//import dao.*;
//
//public class VooMySQL implements CadastroVooDAO {
//	
//	// -----------------------------------------------------------
//	public Connection obtemConexao() throws SQLException {
//		AcessoBanco acesso = new AcessoBanco();
//		return acesso.obtemConexao();
//	}
//	
//	
//	public List<VooTO> consultar() throws VooException{
//		ArrayList<VooTO> resultado = new ArrayList<VooTO>();
//		
//		Connection con = null;
//		PreparedStatement stmt = null;
//		ResultSet rs = null;
//		
//		String sql = "SELECT codigo,origem,destino,situacao FROM voo ORDER BY codigo;";
//		
//		try {
//			con = obtemConexao();
//			stmt = con.prepareStatement(sql);
//			
//			rs = stmt.executeQuery();
//			
//			while (rs.next()) {
//				
//				VooTO voo = new VooTO();
//				
//				//Insere dados do Banco
//				voo.setCodigo(rs.getInt(1));
//				voo.setOrigem(rs.getString(2));
//				voo.setDestino(rs.getString(3));
//				voo.setSituacao(rs.getString(4));
//				
//				//Adiciona a Lista
//				resultado.add(voo);
//			}
//
//			return resultado;
//			
//		} catch (SQLException e) {
//			throw new VooException(e);
//		} finally {
//			if (rs != null) {
//				try {
//					rs.close();
//				}catch(SQLException sqle){
//					//
//				}
//			}
//			if (stmt != null) {
//				try {
//					stmt.close();
//				}catch(SQLException sqle){
//					//
//				}
//			}
//			if (con != null) {
//				try {
//					con.close();
//				}catch(SQLException sqle){
//					//
//				}
//			}			
//		}
//
//	}
//
//
//	@Override
//	public void inserir(VooTO item) throws Exception {
//		String sql = "insert into voo ("
//				+ "codigo, origem, destino, "
//				+ "dia,hora,situacao,pri_escala,"
//				+ "seg_escala,cod_aeronave) "
//				+ "values (?,?,?,?,?,?,?,?,?)";
//
//		Connection conn = null;
//		PreparedStatement stm = null;
//		try {
//			conn = obtemConexao();
//			stm = conn.prepareStatement(sql);
//
//			stm.setInt(   1, item.getCodigo());
//			stm.setString(2, item.getOrigem());
//			stm.setString(3, item.getDestino());
//			stm.setString(4, item.getData());
//			stm.setString(5, item.getHora());
//			stm.setString(6, item.getSituacao());
//			stm.setString(7, item.getEscala1());
//			stm.setString(8, item.getEscala2());
//			stm.setString(9, item.getAeronave());
//
//			stm.execute();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			if (stm != null) {
//				try {
//					stm.close();
//				} catch (SQLException e) {
//					//
//				}
//			}
//			if (conn != null) {
//				try {
//					conn.close();
//				} catch (SQLException e) {
//					//
//				}
//			}
//		}
//	}
//
//	@Override
//	public void alterar(VooTO item) throws Exception {
//		// TODO Auto-generated method stub
//
//	}
//
//	@Override
//	public void excluir(VooTO item) throws Exception {
//		// TODO Auto-generated method stub
//
//	}
//}
//
//
////
////import java.sql.Connection;
////import java.sql.PreparedStatement;
////import java.sql.ResultSet;
////import java.sql.SQLException;
////import java.util.ArrayList;
////import java.util.List;
////
////import br.usjt.exemplo.model.*;
////import br.usjt.exemplo.model.dao.*;
////
//// public Long inserir(CadastroTO item) throws CadastroException{
//// String sql = "insert into cadastro ("
//// + "id, nome, sexo, datanascimento) "
//// + "values (?,?,?,?)";
////
//// Connection conn = null;
//// PreparedStatement stm = null;
//// try {
//// conn = obtemConexao();
//// stm = conn.prepareStatement(sql);
////
//// stm.setLong(1, item.getId());
//// stm.setString(2, item.getNome());
//// stm.setString(3, item.getSexo());
//// stm.setDate(4, new java.sql.Date(item.getDataNascimento().getTime()));
////
//// stm.execute();
////
//// } catch (SQLException e) {
//// throw new CadastroException(e);
////
//// } finally {
//// if (stm != null) {
//// try {
//// stm.close();
//// } catch (SQLException e) {
//// //
//// }
//// }
//// if (conn != null) {
//// try {
//// conn.close();
//// } catch (SQLException e) {
//// //
//// }
//// }
//// }
////
//// return null;
//// }
////
//// public void alterar(CadastroTO item) throws CadastroException{
////
//// }
////
//// public void excluir(CadastroTO item) throws CadastroException{
////
//// }
////
//// public List<CadastroTO> consultar() throws CadastroException{
//// ArrayList<CadastroTO> resultado = new ArrayList<CadastroTO>();
////
//// Connection con = null;
//// PreparedStatement stmt = null;
//// ResultSet rs = null;
////
//// String sql = "select * from cadastro order by nome";
////
//// try {
//// con = obtemConexao();
//// stmt = con.prepareStatement(sql);
////
//// rs = stmt.executeQuery();
////
//// while (rs.next()) {
//// CadastroTO cad = new CadastroTO();
//// cad.setId(rs.getLong(1));
//// cad.setNome(rs.getString(2));
//// cad.setSexo(rs.getString(3));
//// cad.setDataNascimento(rs.getDate(4));
//// resultado.add(cad);
//// }
////
//// return resultado;
////
//// } catch (SQLException e) {
//// throw new CadastroException(e);
////
//// } finally {
//// if (rs != null) {
//// try {
//// rs.close();
//// }catch(SQLException sqle){
//// //
//// }
//// }
//// if (stmt != null) {
//// try {
//// stmt.close();
//// }catch(SQLException sqle){
//// //
//// }
//// }
//// if (con != null) {
//// try {
//// con.close();
//// }catch(SQLException sqle){
//// //
//// }
//// }
//// }
////
//// }
////
//// // -----------------------------------------------------------
//// private Connection obtemConexao() throws SQLException {
//// AcessoBanco acesso = new AcessoBanco();
//// return acesso.obtemConexao();
//// }
////
//// }
