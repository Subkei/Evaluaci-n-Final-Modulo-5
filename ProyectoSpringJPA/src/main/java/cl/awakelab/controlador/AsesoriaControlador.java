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

import cl.awakelab.dao.Asesorias;
import cl.awakelab.servicio.IAsesoriaServicio;


@Controller
public class AsesoriaControlador {

	@Autowired
	IAsesoriaServicio servicioAse;
	//static Logger log = Logger.getLogger(ClienteControlador.class.getName());
	
	

	//vista formulario cliente
    @RequestMapping("/aseform")    
    public String addAsesoria(Model m){    
        m.addAttribute("asesoria", new Asesorias());
        //log.info("Ingreso a formulario de creación de Asesorias");
        return "aseform";
    } 
    //guardar formulario Asesoria
    @RequestMapping("/asesave")    
    public String addAsesoriaSave(@ModelAttribute("asesoria") Asesorias asesoria, BindingResult result, Model m){    
        
    	if(result.hasErrors()) {
    		return "aseform";
    	}
    	else {
    		servicioAse.addAsesoria(asesoria);
    		m.addAttribute("mensaje", "Asesoria creada con exito");
    	}
        //log.info("Asesoria creada: " + ase.toString());
        return "redirect:/viewase";
    }
    //mostrar listado Asesorias
    @RequestMapping("/viewase")    
    public String getAsesoriaList(Model m){    
        List<Asesorias> listase= servicioAse.getAllAsesorias();
        m.addAttribute("listaasesorias",listase);
        //log.info("Listado de Asesorias");
        return "viewase";
    }
    //busqueda por ID de Asesoria
    @GetMapping(value="/asesoria")
    public String Asesoria(Model m, @RequestParam("idasesoria") int idasesoria) {
    	Asesorias ase = servicioAse.getAsesoriaById(idasesoria);
    	m.addAttribute("asesoriaData",ase);
    	return "buscarAsesoria";
    }
    //formulario actualizar Asesoria
    @RequestMapping(value="/editase/{idasesoria}")    
    public String updateAsesoria(Model m, @PathVariable int idasesoria){    
    	Asesorias ase = new Asesorias();
        ase = servicioAse.getAsesoriaById(idasesoria);
        m.addAttribute("asesoria",ase);
        //log.info("Ingreso a edición de Asesorias");
        return "aseeditform";
    }
    //guardar formulario actualizar Asesoria
    @RequestMapping("/aseeditsave")    
    public String updateAsesoriaSave(@ModelAttribute("asesoria") Asesorias asesoria, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "aseform";
       }
       else {
    	   servicioAse.updateAsesoria(asesoria, asesoria.getIdasesoria());
    	m.addAttribute("mensaje", "Asesoria actualizada con exito");
        //log.info("Procesando edición de Asesorias");
        return "redirect:/viewase";
    }
    }
    //eliminar Asesoria
    @GetMapping(value="/deletease/{idasesoria}")    
    public String deleteAsesoria(Model m, @PathVariable int idasesoria){    
        servicioAse.deleteAsesoria(idasesoria);
        m.addAttribute("mensaje", "Asesoria eliminada con exito");
        //log.debug("DEBUG - Asesoria eliminada");
        return "redirect:/viewase";
    }
	
	
	
}
