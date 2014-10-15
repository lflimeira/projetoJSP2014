package model;

public class VooTO {
	
	private int    codigo;
	private String origem;
	private String destino;
	private String escala1;
	private String escala2;
	private String situacao;
	private String data;
	private String hora;
	private String aeronave;
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getOrigem() {
		return origem;
	}
	public void setOrigem(String origem) {
		this.origem = origem;
	}
	public String getDestino() {
		return destino;
	}
	public void setDestino(String destino) {
		this.destino = destino;
	}
	public String getEscala1() {
		return escala1;
	}
	public void setEscala1(String escala1) {
		this.escala1 = escala1;
	}
	public String getEscala2() {
		return escala2;
	}
	public void setEscala2(String escala2) {
		this.escala2 = escala2;
	}
	public String getSituacao() {
		return situacao;
	}
	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getAeronave() {
		return aeronave;
	}
	public void setAeronave(String aeronave) {
		this.aeronave = aeronave;
	}
}
