package model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Usuario {

	private String nome;
	private String login;
	private String senha;
	private String nivelAcesso;
	private String data;

	public Usuario(String login, String senha) throws Exception {
		
		this.login = login;
		this.senha = senha;
		Date dataHoje = new Date();  
		SimpleDateFormat spf = new SimpleDateFormat("dd/MM/yyyy");
		this.data = spf.format(dataHoje);
		
	}

	public String getLogin() {
		return login;
	}

	public String getSenha() {
		return senha;
	}

	public String getNivelAcesso() {
		return nivelAcesso;
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

//	public boolean realizarLogin() {
//
//		
//	}

}
