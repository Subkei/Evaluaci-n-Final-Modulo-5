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

import cl.awakelab.servicio.IChequeoServicio;
import cl.awakelab.modelo.Chequeo;

@Controller
public class ChequeoControlador {

	@Autowired
	IChequeoServicio servicioChec;
	
	static Logger log = Logger.getLogger(ChequeoControlador.class.getName());
		
	//vista formulario chequeo
    @RequestMapping("/checform")    
    public String addChequeo(Model m){    
        m.addAttribute("chequeo", new Chequeo());
        log.info("Ingreso a formulario de creación de Chequeo");
        return "checform";
    } 
    //guardar formulario chequeo
    @PostMapping("/checsave")    
    public String addChequeoSave(@ModelAttribute("chequeo") @Validated Chequeo chequeo, BindingResult result, Model m){    
        
    	if(result.hasErrors()) {
    		return "chequeoform";
    	}
    	else {
    		servicioChec.addChequeo(chequeo);
    		String mensaje = "El chequeo "+ chequeo.getIdchequeo() +" ha sido creado con éxito.";
    		m.addAttribute("mensaje", mensaje);
    		m.addAttribute("detalle", chequeo.getDetalle());
    		m.addAttribute("estado", chequeo.getEstado());
    		m.addAttribute("idvisita", chequeo.getIdvisita());
    	}
        log.info("Chequeo creado: " + chequeo.toString());
        return "checsaved";
    }
    //mostrar listado chequeo
    @GetMapping(value="/viewchec")//(..., headers = "Accept=application/json")    
    public String getChequeoList(Model m){    
        List<Chequeo> listchec= servicioChec.getAllChequeos();
        m.addAttribute("listachequeo",listchec);
        log.info("Listado de chequeo");
        return "viewchequeo";
    }
    //busqueda por ID de chequeo (detalle)
    @GetMapping(value="/chequeo/{idchequeo}")
    public String Chequeo(Model m, @PathVariable int idchequeo) {
    	Chequeo chec = servicioChec.getChequeoById(idchequeo);
    	m.addAttribute("checData",chec);
    	return "checdetalle";
    }
    //formulario actualizar chequeo
    @RequestMapping(value="/editchec/{idchequeo}")    
    public String updateChequeo(Model m, @PathVariable int idchequeo){    
        Chequeo chec = new Chequeo();
        chec = servicioChec.getChequeoById(idchequeo);
        m.addAttribute("chequeo",chec);
        log.info("Ingreso a edición de chequeo");
        return "checeditform";
    }
    //guardar formulario actualizar chequeo
    @RequestMapping("/checeditsave")    
    public String updateChequeoSave(@ModelAttribute("chequeo")@Validated Chequeo chequeo, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "chequeoeditform";
       }
       else {
    	   servicioChec.updateChequeo(chequeo);
    	   String mensaje = "El chequeo "+ chequeo.getIdchequeo() +" ha sido actualizado con éxito.";
    	   m.addAttribute("mensaje", mensaje);
    	   m.addAttribute("detalle", chequeo.getDetalle());
    	   m.addAttribute("estado", chequeo.getEstado());
    	   m.addAttribute("idvisita", chequeo.getIdvisita());    	   
       }
    	log.info("Procesando edición de chequeo");
        return "checsaved";
    }
    //eliminar chequeo
    @GetMapping(value="/deletechec/{idchequeo}")    
    public String deleteChequeo(Model m, @PathVariable int idchequeo){    
        servicioChec.deleteChequeo(idchequeo);
        m.addAttribute("mensaje", "Chequeo eliminado con exito");
        log.debug("DEBUG - Chequeo eliminado");
        return "redirect:/viewchec";
    }
}