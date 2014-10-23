package bd;
import dao.*;

public class DAOFactory {

	private static DAOFactory factory = null;
	
	private DAOFactory() {
	}
	
	public static DAOFactory getInstance(){
		if(factory == null) {
			factory = new DAOFactory();
		}
		return factory;
	}
	
	public AeronaveDAO getAeronaveDAO() {
		return new AeronaveMySQL();
	}
	public VooDAO getVooDAO() {
		return new VooMySQL(); 
	}
	
	public UsuarioDAO getUsuarioDAO() {
		return new UsuarioMysqlDaoImpl();
	}
	public ClienteDAO getClienteDAO() {
		return new ClienteMysqlDaoImpl();
	}
	
	public ResponsavelCompraDAO getResponsavelCompraDAO() {
		return new ResponsavelCompraMysqlDaoImpl();
	}
}
