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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import cl.awakelab.modelo.Capacitacion;
import cl.awakelab.servicio.ICapacitacionServicio;

@Controller
public class CapacitacionControlador {
	@Autowired
	ICapacitacionServicio servicioCap;
	
	static Logger log = Logger.getLogger(CapacitacionControlador.class.getName());
	/*
	@RequestMapping("/")
	public String index() {
		//m.addAttribute("mensaje", "Bienvenido usuario");
		return "index";		
	}*/
	//vista formulario cliente
    @RequestMapping("/capform")    
    public String addCapacitacion(Model m){    
        m.addAttribute("capacitacion", new Capacitacion());
        log.info("Ingreso a formulario de creación de clientes");
        return "capform";
    } 
    //guardar formulario cliente
    @PostMapping("/capsave")    
    public String addCapacitacionSave(@ModelAttribute("capacitacion") @Validated Capacitacion capacitacion, BindingResult result, Model m){    
        
    	if(result.hasErrors()) {
    		return "capform";
    	}
    	else {
    		servicioCap.addCapacitacion(capacitacion);
    		String mensaje = "La capacitación "+capacitacion.getIdcapacitacion()+" ha sido creada con éxito.";
    		m.addAttribute("mensaje", mensaje);
    		m.addAttribute("fecha", capacitacion.getFecha());
    		m.addAttribute("hora", capacitacion.getHora());
    		m.addAttribute("numasistentes", capacitacion.getNumasistentes());
    		m.addAttribute("idvisita", capacitacion.getVisitas_idvisita());
    	}
        log.info("Capacitacion creada: " + capacitacion.toString());
        return "capsaved";
    }
    //mostrar listado Capacitacion
    @RequestMapping("/viewcap")    
    public String getCapacitacionList(Model m){    
        List<Capacitacion> listcap= servicioCap.getAllCapacitacion();
        m.addAttribute("listacapacitacion",listcap);
        log.info("Listado de clientes");
        return "viewcap";
    }
    //busqueda por ID de Capacitacion (detalle)
    @GetMapping(value="/capacitacion/{idcapacitacion}")
    public String Capacitacion(Model m, @PathVariable int idcapacitacion) {
    	Capacitacion cap = servicioCap.getCapacitacionById(idcapacitacion);
    	m.addAttribute("capData",cap);
    	return "capdetalle";
    }
    //formulario actualizar Capacitacion
    @RequestMapping(value="/editcap/{idcapacitacion}")    
    public String updateCliente(Model m, @PathVariable int idcapacitacion){    
        Capacitacion cap = new Capacitacion();
        cap = servicioCap.getCapacitacionById(idcapacitacion);
        m.addAttribute("capacitacion",cap);
        log.info("Ingreso a edición de Capacitacion");
        return "capeditform";
    }
    //guardar formulario actualizar capacitacion
    @RequestMapping("/capeditsave")    
    public String updateCapacitacionSave(@ModelAttribute("capacitacion") @Validated Capacitacion capacitacion, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "capeditsave";
       }
       else {
    	   servicioCap.updateCapacitacion(capacitacion, capacitacion.getIdcapacitacion());
    	   String mensaje = "La capacitación "+capacitacion.getIdcapacitacion()+" ha sido actualizada con éxito.";
   		m.addAttribute("mensaje", mensaje);
   		m.addAttribute("fecha", capacitacion.getFecha());
   		m.addAttribute("hora", capacitacion.getHora());
   		m.addAttribute("numasistentes", capacitacion.getNumasistentes());
   		m.addAttribute("idvisita", capacitacion.getVisitas_idvisita());
       }
        log.info("Procesando edición de clientes");
        return "capsaved";
    }
    //eliminar cliente
    @GetMapping(value="/deletecap/{idcapacitacion}")    
    public String deleteCapacitacion(Model m, @PathVariable int idcapacitacion){    
    	servicioCap.deleteCapacitacion(idcapacitacion);
        m.addAttribute("mensaje", "Capacitacion eliminada con exito");
        //log.debug("DEBUG - Capacitacion eliminada");
        return "redirect:/viewcap";
    }
}