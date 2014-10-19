package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AcessoBanco {
	
	private String senha;

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}

	public Connection obtemConexao() throws SQLException{
		String senhaUsu = getSenha();
		
		return DriverManager.getConnection("jdbc:mysql://localhost/aeroporto","root", senhaUsu);
	}
	
	public String getSenha(){
		return this.senha;
	}
	
	public void setSenha(String usuario){
		if(usuario.equals("jefferson")){
			this.senha = "root";
		}
		
		if(usuario.equals("maicon"))
			this.senha = "";
		
		if(usuario.equals("luiz"))
			this.senha = "123";
	}

}

