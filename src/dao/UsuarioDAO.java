package dao;

import java.util.ArrayList;
import model.*;

public interface UsuarioDAO {
	
	public ArrayList realizarLogin(String login, String senha); 
}
