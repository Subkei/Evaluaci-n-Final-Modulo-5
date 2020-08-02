package cl.awakelab.controlador;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;

import cl.awakelab.modelo.Asesorias;
import cl.awakelab.servicio.IAsesoriaServicio;

@Controller
public class AsesoriaControlador {

	@Autowired
	IAsesoriaServicio servicioAse;
	static Logger log = Logger.getLogger(AsesoriaControlador.class.getName());

	//vista formulario cliente
    @RequestMapping("/aseform")    
    public String addAsesoria(Model m){    
        m.addAttribute("asesoria", new Asesorias());
        //log.info("Ingreso a formulario de creación de Asesorias");
        return "aseform";
    } 
    
    //guardar formulario Asesoria
    @PostMapping("/asesave")    
    public String addAsesoriaSave(@ModelAttribute("asesoria") @Validated Asesorias asesoria, BindingResult result, Model m){    
        
    	if(result.hasErrors()) {
    		return "aseform";
    	}
    	else {
    		servicioAse.addAsesoria(asesoria);
    		String mensaje = "La Asesoria  "+ asesoria.getFecha() + " ha sido creada con exito" ;
    		m.addAttribute("mensaje", mensaje);    		
    		m.addAttribute("detalle", asesoria.getDetalle());
    		m.addAttribute("gestion", asesoria.getGestion());
    		m.addAttribute("propuestas", asesoria.getPropuestas());
    		m.addAttribute("fecha", asesoria.getFecha());
    		m.addAttribute("especial", asesoria.getEspecial());
    		m.addAttribute("visitas_idvisita", asesoria.getVisitas_idvisita());
    			
    	}
        log.info("Asesoria creada: " + asesoria.toString());
        return "asesaved";
    }
        //mostrar listado Asesorias
    @RequestMapping("/viewase")    
    public String getAsesoriaList(Model m){    
        List<Asesorias> listase= servicioAse.getAllAsesorias();
        m.addAttribute("listaasesorias",listase);
        log.info("Listado de Asesorias");
        return "viewase";
    }
    
    //busqueda por ID de Asesoria
    @GetMapping(value="/asesoria/{idasesoria}")
    public String Asesoria(Model m,@PathVariable int idasesoria) {
    	Asesorias ase = servicioAse.getAsesoriaById(idasesoria);
    	m.addAttribute("asesoriaData",ase);
    	return "asedetalle";
    }
    
    //formulario actualizar Asesoria
    @RequestMapping(value="/editase/{idasesoria}")    
    public String updateAsesoria(Model m, @PathVariable int idasesoria){    
    	Asesorias ase = new Asesorias();
        ase = servicioAse.getAsesoriaById(idasesoria);
        m.addAttribute("asesoria",ase);
        log.info("Ingreso a edición de Asesorias");
        return "aseeditform";
    }
    
    //guardar formulario actualizar Asesoria
    @RequestMapping("/aseeditsave")    
    public String updateAsesoriaSave(@ModelAttribute("asesoria") @Validated Asesorias asesoria, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "aseform";
       }
       else {
    	   servicioAse.updateAsesoria(asesoria, asesoria.getIdasesoria());
    	   String mensaje = "La Asesoria  "+ asesoria.getFecha() + " ha sido creada con exito" ;
   		m.addAttribute("mensaje", mensaje);
   		m.addAttribute("detalle", asesoria.getDetalle());
   		m.addAttribute("gestion", asesoria.getGestion());
   		m.addAttribute("propuestas", asesoria.getPropuestas());
   		m.addAttribute("fecha", asesoria.getFecha());
   		m.addAttribute("especial", asesoria.getEspecial());
   		m.addAttribute("visitas_idvisita", asesoria.getVisitas_idvisita());
    	   
       }   
        log.info("Procesando edición de Asesorias");
        return "asesaved";
  }
    
    //eliminar Asesoria
    @GetMapping(value="/deletease/{idasesoria}")    
    public String deleteAsesoria(Model m, @PathVariable int idasesoria){    
        servicioAse.deleteAsesoria(idasesoria);
        m.addAttribute("mensaje", "Asesoria eliminada con exito");
        log.debug("DEBUG - Asesoria eliminada");
        return "redirect:/viewase";
    }
    
    //vista formulario Accidente Cliente 
	  @RequestMapping("/c_aseform")    
	    public String addAsesoria2(Model m){    
	        m.addAttribute("asesoria", new Asesorias());  
	        log.info("Ingreso a formulario de solicitar de asesorias");
	        return "c_aseform";
	    }
	  
	    //guardar formulario Asesoria Cliente 
	      @RequestMapping("/c_savease") 
	     public String addAsesoriaSave2(@ModelAttribute("asesoria") Asesorias asesoria, BindingResult result, Model m){ 
	   if(result.hasErrors()) {
    		return "c_aseform";
    	}
    	else {
    		servicioAse.addAsesoria(asesoria);
    		String mensaje = "La Asesoria  "+ asesoria.getFecha() + " ha sido creada con exito" ;
    		m.addAttribute("mensaje", mensaje);
    		m.addAttribute("detalle", asesoria.getDetalle());
    		m.addAttribute("gestion", asesoria.getGestion());
    		m.addAttribute("propuestas", asesoria.getPropuestas());
    		m.addAttribute("fecha", asesoria.getFecha());
    		m.addAttribute("especial", asesoria.getEspecial());
    		m.addAttribute("visitas_idvisita", asesoria.getVisitas_idvisita());
    	}
	    log.info("Asesoria creada: " + asesoria.toString());
        return "asesaved2";
    }  
	      
}
