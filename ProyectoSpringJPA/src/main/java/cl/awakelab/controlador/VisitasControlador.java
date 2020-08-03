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
import org.springframework.web.bind.annotation.RequestParam;

import cl.awakelab.modelo.Visitas;
import cl.awakelab.servicio.IVisitasServicio;

@Controller
public class VisitasControlador {
	@Autowired
	IVisitasServicio servicioVis;

	static Logger log = Logger.getLogger(VisitasControlador.class.getName());
	
	//vista formulario cliente
    @RequestMapping("/visform")    
    public String addVisitas(Model m){    
        m.addAttribute("visitas", new Visitas());
        log.info("Ingreso a formulario de creación de clientes");
        return "visform";
    } 
    //guardar formulario cliente
    @PostMapping("/vissave")    
    public String addVisitasSave(@ModelAttribute("visitas") @Validated Visitas visitas, BindingResult result, Model m){    
        
    	if(result.hasErrors()) {
    		return "visform";
    	}
    	else {
    		servicioVis.addVisitas(visitas);
    		String mensaje = "La visita "+visitas.getIdvisita()+" ha sido creada con éxito.";
    		m.addAttribute("mensaje", mensaje);
    		m.addAttribute("direccion", visitas.getDireccion() );
    		m.addAttribute("ciudad", visitas.getCiudad());
    		m.addAttribute("fecha", visitas.getFecha());
    		m.addAttribute("resumen", visitas.getResumen());
    		m.addAttribute("observaciones", visitas.getObservaciones());
    		m.addAttribute("cliente_id", visitas.getCliente_id());
    		m.addAttribute("empleado_idempleado", visitas.getEmpleado_idempleado());
    	}
        log.info("Visitas creada: " + visitas.toString());
        return "vissaved";
    }
    //mostrar listado Visitas
    @RequestMapping("/viewvis")    
    public String getVisitasList(Model m){    
        List<Visitas> listvis= servicioVis.getAllVisitas();
        m.addAttribute("listavisitas",listvis);
        log.info("Listado de clientes");
        return "viewvis";
    }
    //busqueda por ID de Visitas (detalle)
    @GetMapping(value="/visitas/{idvisita}")
    public String Visitas(Model m, @PathVariable int idvisita) {
    	Visitas vis = servicioVis.getVisitasById(idvisita);
    	m.addAttribute("visData",vis);
    	log.info("Detalle ID cliente");
    	return "visdetalle";
    }
    //Vista Reporte por ID de Cliente-Visitas
    @RequestMapping("/reporteclibuscar")
    public String reporteclibuscar(Model m) {
    List <Visitas> listbuscarcli = servicioVis.getAllVisitas();
	     m.addAttribute("listabuscarcli", listbuscarcli);
	     log.info("Vista de reporte por ID de Cliente-Visitas");
	     return "reportecli";
    }        
    //Reporte por ID de Cliente-Visitas
    @GetMapping(value="/reportecli")
    public String reporteCliente(Model m, @RequestParam("idvisita") int idvisita) {
    	Visitas vis = servicioVis.getVisitasById(idvisita);
    	m.addAttribute("visitaData",vis);
    	log.info("Reporte por ID de Cliente-Visitas");
    	return "reportecli";
    }
    //formulario actualizar Visitas
    @RequestMapping(value="/editvis/{idvisita}")    
    public String updateCliente(Model m, @PathVariable int idvisita){    
        Visitas vis = new Visitas();
        vis = servicioVis.getVisitasById(idvisita);
        m.addAttribute("visitas",vis);
        log.info("Ingreso a edición de Visitas");
        return "viseditform";
    }
    //guardar formulario actualizar visitas
    @RequestMapping("/viseditsave")    
    public String updateVisitasSave(@ModelAttribute("visitas") @Validated Visitas visitas, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "viseditsave";
       }
       else {
    	   servicioVis.updateVisitas(visitas, visitas.getIdvisita());
    	   String mensaje = "La visita "+visitas.getIdvisita()+" ha sido actualizada con éxito.";
   		m.addAttribute("mensaje", mensaje);
   		m.addAttribute("direccion", visitas.getDireccion() );
   		m.addAttribute("ciudad", visitas.getCiudad());
   		m.addAttribute("fecha", visitas.getFecha());
   		m.addAttribute("resumen", visitas.getResumen());
   		m.addAttribute("observaciones", visitas.getObservaciones());
   		m.addAttribute("cliente_id", visitas.getCliente_id());
   		m.addAttribute("empleado_id", visitas.getEmpleado_idempleado());
       }
    	log.info("Procesando edición de clientes");
        return "redirect:/viewvis";
    }
    //eliminar cliente
    @GetMapping(value="/deletevis/{idvisita}")    
    public String deleteVisitas(Model m, @PathVariable int idvisita){    
    	servicioVis.deleteVisitas(idvisita);
        m.addAttribute("mensaje", "Visitas eliminada con exito");
        log.debug("DEBUG - Visitas eliminada");
        return "redirect:/viewvis";
    }
}
