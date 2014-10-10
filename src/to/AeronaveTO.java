package to;

public class AeronaveTO {
	
	private int codigo;
	private String nomeAeronave;
	private String tipoAeronave;
	private int fileiras;
	private int colunas;
	
	public AeronaveTO(int codigo, String nomeAeronave, String tipoAeronave, int fileiras, int colunas){
		this.codigo = codigo;
		this.nomeAeronave = nomeAeronave;
		this.tipoAeronave = tipoAeronave;
		this.fileiras = fileiras;
		this.colunas = colunas;
	}
	public AeronaveTO(){
		
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNomeAeronave() {
		return nomeAeronave;
	}

	public void setNomeAeronave(String nomeAeronave) {
		this.nomeAeronave = nomeAeronave;
	}

	public String getTipoAeronave() {
		return tipoAeronave;
	}

	public void setTipoAeronave(String tipoAeronave) {
		this.tipoAeronave = tipoAeronave;
	}

	public int getFileiras() {
		return fileiras;
	}

	public void setFileiras(int fileiras) {
		this.fileiras = fileiras;
	}

	public int getColunas() {
		return colunas;
	}

	public void setColunas(int colunas) {
		this.colunas = colunas;
	}
	
	

}
