package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Voo;
import model.VooTO;

/**
 * Servlet implementation class CadastraVoo
 */
@WebServlet("/CadastraVoo")
public class CadastraVoo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastraVoo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		cadastrar(request,response);		
	}

	public void cadastrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		VooTO vooto = new VooTO();
		vooto.setCodigo(Integer.parseInt(request.getParameter("cod")));
		vooto.setOrigem(request.getParameter("origem"));
		vooto.setDestino(request.getParameter("destino"));
		vooto.setAeronave(request.getParameter("aeronave"));
		vooto.setData(request.getParameter("data"));
		vooto.setHora(request.getParameter("hora"));
		vooto.setEscala1(request.getParameter("escala1"));
		vooto.setEscala2(request.getParameter("escala2"));
		vooto.setSituacao(request.getParameter("status"));
		
		Voo cadastro = new Voo(vooto);
		try{
			cadastro.inserir();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		request.setAttribute("obj", vooto);
		request.getRequestDispatcher("cadastra_voo.jsp").forward(request, response);
		
//		List suaLista = obj.getListDeSeiLahOque();  
//		request.setAttribute("list",list);  
//		RequestDispatcher dispatcher = request.getRequestDispatcher("suaPagina.jsp");  
//		dispatcher.forward(request,response);   
	}
	
}
