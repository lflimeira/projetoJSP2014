package to;


public class CheckinTO {

	private int codigo;
	private ClienteTO clienteTO;
	private VooTO vooTO;
	private ResponsavelTO responsavelTO;
	private int coluna;
	private int fileira;
	private String status;
	
	
	public CheckinTO(int codigo, ClienteTO clienteTO, ResponsavelTO responsavelTO, int coluna, int fileira, String status){
		
		this.codigo = codigo;
		this.clienteTO = clienteTO;
		this.responsavelTO = responsavelTO;
		this.coluna = coluna;
		this.fileira = fileira;
		this.status = status;
			
	}
	public CheckinTO(){
		
	}

	public int getCodigo() {
		return codigo;
	}


	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}


	public ClienteTO getClienteTO() {
		return clienteTO;
	}


	public void setClienteTO(ClienteTO clienteTO) {
		this.clienteTO = clienteTO;
	}


	public VooTO getVooTO() {
		return vooTO;
	}


	public void setVooTO(VooTO vooTO) {
		this.vooTO = vooTO;
	}


	public ResponsavelTO getResponsavelTO() {
		return responsavelTO;
	}


	public void setResponsavelTO(ResponsavelTO responsavelTO) {
		this.responsavelTO = responsavelTO;
	}


	public int getColuna() {
		return coluna;
	}


	public void setColuna(int coluna) {
		this.coluna = coluna;
	}


	public int getFileira() {
		return fileira;
	}


	public void setFileira(int fileira) {
		this.fileira = fileira;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}
	
}
