package cl.awakelab.ultimoproyecto.controlador;

//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


public class IndexControlador {
	
	//Inicio
	@RequestMapping("/")
	public String index() {
		//m.addAttribute("mensaje", "Bienvenido usuario");
		return "index";
		
	}
}
