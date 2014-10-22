package to;

public class ResponsavelCompraTO {
	
	private int    idCompra;
	private String email;
	private String celular;
	private String bandeira;
	private String nomeTitular;
	private String cpf;
	private String numCartao;
	private String dataValidade;
	private String codigoSeguranca;
	private String banco;
	private String agencia;
	private String conta;
	
	public ResponsavelCompraTO( String email, String celular,
			String bandeira, String nomeTitular, String cpf, String numCartao,
			String dataValidade, String codigoSeguranca) {
		this.email = email;
		this.celular = celular;
		this.bandeira = bandeira;
		this.nomeTitular = nomeTitular;
		this.cpf = cpf;
		this.numCartao = numCartao;
		this.dataValidade = dataValidade;
		this.codigoSeguranca = codigoSeguranca;
		
	}
	
	public ResponsavelCompraTO( String email, String celular,
			 String nomeTitular, String cpf, String banco,
			String agencia, String conta) {
		this.email = email;
		this.celular = celular;
		this.nomeTitular = nomeTitular;
		this.cpf = cpf;
		this.banco = banco;
		this.agencia = agencia;
		this.conta = conta;
	}
	
	public int getIdCompra() {
		return idCompra;
	}
	public void setIdCompra(int idCompra) {
		this.idCompra = idCompra;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getBandeira() {
		return bandeira;
	}
	public void setBandeira(String bandeira) {
		this.bandeira = bandeira;
	}
	public String getNomeTitular() {
		return nomeTitular;
	}
	public void setNomeTitular(String nomeTitular) {
		this.nomeTitular = nomeTitular;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNumCartao() {
		return numCartao;
	}
	public void setNumCartao(String numCartao) {
		this.numCartao = numCartao;
	}
	public String getDataValidade() {
		return dataValidade;
	}
	public void setDataValidade(String dataValidade) {
		this.dataValidade = dataValidade;
	}
	public String getCodigoSeguranca() {
		return codigoSeguranca;
	}
	public void setCodigoSeguranca(String codigoSeguranca) {
		this.codigoSeguranca = codigoSeguranca;
	}
	public String getBanco() {
		return banco;
	}
	public void setBanco(String banco) {
		this.banco = banco;
	}
	public String getAgencia() {
		return agencia;
	}
	public void setAgencia(String agencia) {
		this.agencia = agencia;
	}
	public String getConta() {
		return conta;
	}
	public void setConta(String conta) {
		this.conta = conta;
	}
	
	
}
