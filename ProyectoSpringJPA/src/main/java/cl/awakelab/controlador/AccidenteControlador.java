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

import cl.awakelab.modelo.Accidentes;
import cl.awakelab.servicio.IAccidenteServicio;

@Controller
public class AccidenteControlador {

	@Autowired
	IAccidenteServicio servicioAcc;
	
	static Logger log = Logger.getLogger(AccidenteControlador.class.getName());	
	
	//vista formulario Accidente
    @RequestMapping("/accform")    
    public String addAccidente(Model m){    
        m.addAttribute("accidente", new Accidentes());
        log.info("Ingreso a formulario de creación de Accidentes");
        return "accform";
    } 
    
    //guardar formulario Accidente
    @PostMapping("/accsave")    
    public String addAccidenteSave(@ModelAttribute("accidente") @Validated Accidentes accidente, BindingResult result, Model m){    
        
    	if(result.hasErrors()) {
    		return "accform";
    	}
    	else {
    		servicioAcc.addAccidente(accidente);
    		String mensaje = " El accidente " + accidente.getFecha()+ " ha sido reportado con exito ";
    		m.addAttribute("mensaje", mensaje);
    		m.addAttribute("fecha", accidente.getFecha());
    		m.addAttribute("hora", accidente.getHora());
    		m.addAttribute("suceso", accidente.getSuceso());
    		m.addAttribute("lugar", accidente.getLugar());
    		m.addAttribute("cliente_id", accidente.getCliente_id());
    	}
    	
        log.info("Accidente creado: " + accidente.toString());
        return "accsaved";
    }
    
    
    //mostrar listado Accidentes
    @RequestMapping("/viewacc")    
    public String getAccidenteList(Model m){    
        List<Accidentes> listacc= servicioAcc.getAllAccidentes();
        m.addAttribute("listaaccidentes",listacc);
        log.info("Listado de accidentes");
        return "viewacc";
    }
    
  
    //busqueda por ID de accidente
    @GetMapping(value="/accidente/{idaccidente}")
    public String Accidente(Model m, @PathVariable int idaccidente) {
    	Accidentes acc = servicioAcc.getAccidenteById(idaccidente);
    	m.addAttribute("accidenteData",acc);
    	return "accdetalle";
    }
    
 
    //formulario actualizar Accidente
    @RequestMapping(value="/editacc/{idaccidente}")    
    public String updateAccidente(Model m, @PathVariable int idaccidente){    
    	Accidentes acc = new Accidentes();
        acc = servicioAcc.getAccidenteById(idaccidente);
        m.addAttribute("accidente",acc);
        log.info("Ingreso a edición de Accidentes");
        return "acceditform";
    }
    
    //guardar formulario actualizar Accidente
    @RequestMapping("/acceditsave")    
    public String updateAccidenteSave(@ModelAttribute("accidente") @Validated Accidentes accidente, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "accform";
       }
       else {
    	   servicioAcc.updateAccidente(accidente, accidente.getIdaccidente());
   		String mensaje = " El accidente " + accidente.getFecha()+ " ha sido reportado con exito ";
   		m.addAttribute("mensaje", mensaje);
   		m.addAttribute("fecha", accidente.getFecha());
   		m.addAttribute("hora", accidente.getHora());
   		m.addAttribute("suceso", accidente.getSuceso());
   		m.addAttribute("lugar", accidente.getLugar());
   		m.addAttribute("cliente_id", accidente.getCliente_id());
   	}
        log.info("Procesando edición de Accidentes");
        return "accsaved";
    }
    
    
    //eliminar Accidente
    @GetMapping(value="/deleteacc/{idaccidente}")    
    public String deleteAccidente(Model m, @PathVariable int idaccidente){    
        servicioAcc.deleteAccidente(idaccidente);
        m.addAttribute("mensaje", "Accidente eliminado con exito");
        log.debug("DEBUG - Accidente eliminado");
        return "redirect:/viewacc";
    }
    
    
    //vista formulario Accidente-----Cliente 
	  @RequestMapping("/r_accform")    
	    public String addAccidente2(Model m){    
	        m.addAttribute("accidente", new Accidentes());  
	        log.info("Ingreso a formulario de solicitar de accidentes");
	        return "r_accform";
	    }
	  
	    //guardar formulario Accidente----Cliente 
	      @RequestMapping("/r_saveacc") 
	     public String addAccidenteSave2(@ModelAttribute("accidente") Accidentes accidente, BindingResult result, Model m){ 
	   if(result.hasErrors()) {
    		return "r_accform";
    	}
    	else {
    		servicioAcc.addAccidente(accidente);
    		String mensaje = " El accidente " + accidente.getFecha()+ " ha sido reportado con exito ";
    		m.addAttribute("mensaje", mensaje);
    		m.addAttribute("fecha", accidente.getFecha());
    		m.addAttribute("hora", accidente.getHora());
    		m.addAttribute("suceso", accidente.getSuceso());
    		m.addAttribute("lugar", accidente.getLugar());
    		m.addAttribute("cliente_id", accidente.getCliente_id());
    	}
	    log.info("Accidente creada: " + accidente.toString());
        return "accsaved2";
    }
}