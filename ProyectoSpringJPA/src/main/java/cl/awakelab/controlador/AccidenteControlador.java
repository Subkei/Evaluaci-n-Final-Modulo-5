package cl.awakelab.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.awakelab.dao.Accidentes;
import cl.awakelab.servicio.IAccidenteServicio;


@Controller
public class AccidenteControlador {

	
	@Autowired
	IAccidenteServicio servicioAcc;
	
	//static Logger log = Logger.getLogger(ClienteControlador.class.getName());
	
	
	//vista formulario Accidente
    @RequestMapping("/accform")    
    public String addAccidente(Model m){    
        m.addAttribute("accidente", new Accidentes());
        //log.info("Ingreso a formulario de creación de Accidentes");
        return "accform";
    } 
    //guardar formulario Accidente
    @RequestMapping("/accsave")    
    public String addAccidenteSave(@ModelAttribute("accidente") Accidentes accidente, BindingResult result, Model m){    
        
    	if(result.hasErrors()) {
    		return "accform";
    	}
    	else {
    		servicioAcc.addAccidente(accidente);
    		m.addAttribute("mensaje", "Accidente reportado con exito");
    	}
        //log.info("Accidente creado: " + acc.toString());
        return "redirect:/viewacc";
    }
    //mostrar listado Accidentes
    @RequestMapping("/viewacc")    
    public String getAccidenteList(Model m){    
        List<Accidentes> listacc= servicioAcc.getAllAccidentes();
        m.addAttribute("listaaccidentes",listacc);
        //log.info("Listado de accidentes");
        return "viewacc";
    }
    //busqueda por ID de accidente
    @GetMapping(value="/accidente")
    public String Accidente(Model m, @RequestParam("idaccidente") int idaccidente) {
    	Accidentes acc = servicioAcc.getAccidenteById(idaccidente);
    	m.addAttribute("accidenteData",acc);
    	return "buscarAccidente";
    }
    //formulario actualizar Accidente
    @RequestMapping(value="/editacc/{idaccidente}")    
    public String updateAccidente(Model m, @PathVariable int idaccidente){    
    	Accidentes acc = new Accidentes();
        acc = servicioAcc.getAccidenteById(idaccidente);
        m.addAttribute("accidente",acc);
        //log.info("Ingreso a edición de Accidentes");
        return "acceditform";
    }
    //guardar formulario actualizar Accidente
    @RequestMapping("/acceditsave")    
    public String updateAccidenteSave(@ModelAttribute("accidente") Accidentes accidente, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "accform";
       }
       else {
    	   servicioAcc.updateAccidente(accidente, accidente.getIdaccidente());
    	m.addAttribute("mensaje", "Accidente Registrado con exito");
       }
    	//log.info("Procesando edición de Accidentes");
        return "redirect:/viewacc";
    }
    //eliminar Accidente
    @GetMapping(value="/deleteacc/{idaccidente}")    
    public String deleteAccidente(Model m, @PathVariable int idaccidente){    
        servicioAcc.deleteAccidente(idaccidente);
        m.addAttribute("mensaje", "Accidente eliminado con exito");
        //log.debug("DEBUG - Accidente eliminado");
        return "redirect:/viewacc";
    }
}
