package controller;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Idioma
 */
@WebServlet("/idioma")
public class Idioma extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Idioma() {
        // TODO Auto-generated constructor stub
    	super();
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
		// TODO Auto-generated method stub
		
		int cbo_idioma = Integer.parseInt(request.getParameter("linguagem"));
		ResourceBundle bundle = null;

		if(cbo_idioma == 1){
			bundle = ResourceBundle.getBundle("exemplo", new Locale("pt","BR"));
		}else if(cbo_idioma == 2){
			bundle = ResourceBundle.getBundle("exemplo",Locale.US);
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("linguagem", bundle);
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
	}

}
