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
import cl.awakelab.modelo.Mejoras;
//import cl.awakelab.servicio.IClienteServicio;
import cl.awakelab.servicio.IMejorasServicio;

@Controller
public class MejorasControlador {
	
	@Autowired
	IMejorasServicio servicioMej;
	
	
	static Logger log=Logger.getLogger(MejorasControlador.class.getName());	

	
	//vista formulario de Mejoras
	@RequestMapping("/mejform")
	public String addMejora(Model m) {
		//List<Cliente> listcli = servcli.getAllClientes();		
		m.addAttribute("mejora", new Mejoras());
		//m.addAttribute("listaclientes", listcli);
		log.info("Ingreso a formulario de creación de Act. de Mejora");
		return "mejform";
	}
	
	//guardar formulario de mejoras
	@PostMapping("/mejsave")
	public String addMejoraSave(@ModelAttribute("mejoras") @Validated Mejoras mejoras, BindingResult result, Model m) {
		if(result.hasErrors()) {
			return "mejform";
		}
		else {
			servicioMej.addMejora(mejoras);
			String mensaje = "La Acttividad de Mejora "+ mejoras.getIdmejora() + " ha sido creada con éxito.";
			m.addAttribute("mensaje", mensaje);
			m.addAttribute("fecha", mejoras.getFecha());
			m.addAttribute("motivo", mejoras.getMotivo());
			m.addAttribute("actividades", mejoras.getActividades());
			m.addAttribute("estado", mejoras.getEstado());
			m.addAttribute("cliente_id", mejoras.getCliente_id());
		}
		log.info("Act. de mejora creada: " + mejoras.toString());
		return "mejsaved";
	}
	
	//mostrar listado mejoras
    @RequestMapping("/viewmej")    
    public String getMejoraList(Model m){    
        List<Mejoras> listmej= servicioMej.getAllMejoras();
        m.addAttribute("listamejoras",listmej);
        log.info("Listado de mejoras");
        return "viewmej";
    }
    //busqueda por ID de mejora
    @GetMapping(value="/mejoras/{idmejora}")
    public String Cliente(Model m, @PathVariable int idmejora) {
    	Mejoras mej = servicioMej.getMejoraById(idmejora);
    	m.addAttribute("mejoraData",mej);
    	return "mejdetalle";
    }
    //formulario actualizar mejora
    @RequestMapping(value="/editmej/{idmejora}")    
    public String updateMejora(Model m, @PathVariable int idmejora){    
        Mejoras mej = new Mejoras();
        mej = servicioMej.getMejoraById(idmejora);
        m.addAttribute("mejora",mej);
        log.info("Ingreso a edición de mejoras");
        return "mejeditform";
    }
    //guardar formulario actualizar mejora
    @RequestMapping("/mejeditsave")    
    public String updateMejoraSave(@ModelAttribute("mejora") @Validated Mejoras mejoras, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "mejeditform";
       }
       else {
    	   servicioMej.updateMejora(mejoras);
    	   String mensaje = "La Actividad de Mejora "+ mejoras.getIdmejora() + " ha sido actualizada con éxito.";
    	   m.addAttribute("mensaje", mensaje);
    	   m.addAttribute("fecha", mejoras.getFecha());
    	   m.addAttribute("motivo", mejoras.getMotivo());
    	   m.addAttribute("actividades", mejoras.getActividades());
    	   m.addAttribute("estado", mejoras.getActividades());
    	   m.addAttribute("cliente_id", mejoras.getCliente_id());
       }
    	log.info("Procesando edición de mejoras");
        return "mejsaved";
    }
    //eliminar mejora
    @GetMapping(value="/deletemej/{idmejora}")    
    public String deleteMejora(Model m, @PathVariable int idmejora){    
        servicioMej.deleteMejora(idmejora);
        m.addAttribute("mensaje", "Mejora eliminada con éxito");
        log.debug("DEBUG - Mejora eliminada");
        return "redirect:/viewmej";
    }
}