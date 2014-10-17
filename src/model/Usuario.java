package model;

import java.io.*;  
import java.math.BigInteger;

import javax.crypto.*;  
import javax.crypto.spec.*;  

import bd.DAOFactory;
import dao.UsuarioDAO;

import java.security.*;  
import java.security.cert.*; 
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class Usuario {

	private String nome;
	private String login;
	private String senha;
	private int nivelAcesso;
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

	public int getNivelAcesso() {
		return nivelAcesso;
	}
	public void setNivelAcesso(int nivelAcesso) {
		this.nivelAcesso = nivelAcesso;
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

	public void setData() {
		Date dataHoje = new Date();  
		SimpleDateFormat spf = new SimpleDateFormat("dd/MM/yyyy");
		this.data = spf.format(dataHoje);
	}

	public boolean realizarLogin() {
		
		DAOFactory factory = DAOFactory.getInstance();
		UsuarioDAO userDAO = factory.getUsuarioDAO();
		ArrayList user = userDAO.realizarLogin(login, md5(senha));
		
		if(user.isEmpty()){
			return false;
		}else{
			this.setNome(user.get(0) + "");
			this.setNivelAcesso(Integer.parseInt(user.get(1) + ""));
			return true;
		}
	}
	
	public static String md5(String senha){
		String sen = "";
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		BigInteger hash = new BigInteger(1, md.digest(senha.getBytes()));
		sen = hash.toString(16);
		return sen;
	}

}
