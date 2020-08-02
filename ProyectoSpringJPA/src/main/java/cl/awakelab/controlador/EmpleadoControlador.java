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
import cl.awakelab.modelo.Empleado;
import cl.awakelab.servicio.IEmpleadoServicio;

@Controller
public class EmpleadoControlador {
	
	@Autowired
	IEmpleadoServicio servicioEmp;
	
	static Logger log = Logger.getLogger(EmpleadoControlador.class.getName());
	
	
	//vista formulario empleado
    @RequestMapping("/empform")    
    public String addEmpleado(Model m){    
        m.addAttribute("empleado", new Empleado());
        log.info("Ingreso a formulario de creación de empleados");
        return "empform";
    } 
    //guardar formulario empleado
    @PostMapping("/empsave")    
    public String addEmpleadoSave(@ModelAttribute("empleado") Empleado empleado, BindingResult result, Model m){    
        
    	if(result.hasErrors()) {
    		return "empform";
    	}
    	else {
    		servicioEmp.addEmpleado(empleado);
    		String mensaje = "El empleado "+ empleado.getNombre() + " ha sido creado con éxito.";
    		m.addAttribute("mensaje", mensaje);
    		m.addAttribute("nombre", empleado.getNombre());
    		m.addAttribute("especialidad",empleado.getEspecialidad());
    	}
        log.info("Empleado creado: " + empleado.toString());
        return "empsaved";
    }
    //mostrar listado empleados
    @RequestMapping("/viewemp")    
    public String getEmpleadoList(Model m){    
        List<Empleado> listemp= servicioEmp.getAllEmpleados();
        m.addAttribute("listaempleados",listemp);
        log.info("Listado de empleados");
        return "viewemp";
    }
    //busqueda por ID de empleado
    @GetMapping(value="/empleado/{idempleado}")
    public String Empleado(Model m, @PathVariable int idempleado) {
    	Empleado emp = servicioEmp.getEmpleadoById(idempleado);
    	m.addAttribute("empleadoData",emp);
    	return "empdetalle";
    }
    //formulario actualizar empleado
    @RequestMapping(value="/editemp/{idempleado}")    
    public String updateEmpleado(Model m, @PathVariable int idempleado){    
        Empleado emp = new Empleado();
        emp = servicioEmp.getEmpleadoById(idempleado);
        m.addAttribute("empleado",emp);
        log.info("Ingreso a edición de empleados");
        return "empeditform";
    }
    
    //guardar formulario actualizar empleado
    @RequestMapping("/empeditsave")    
    public String updateEmpleadoSave(@ModelAttribute("empleado") @Validated Empleado empleado, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "empeditform";
       }
       else {
    	servicioEmp.updateEmpleado(empleado);
    	String mensaje = "El empleado "+ empleado.getNombre() + " ha sido actualizado con éxito.";
    	m.addAttribute("mensaje", mensaje);
    	m.addAttribute("nombre", empleado.getNombre());
    	m.addAttribute("especialidad", empleado.getEspecialidad());
       }
    	log.info("Procesando edición de empleados");
        return "empsaved";
    }
    //eliminar empleado
    @GetMapping(value="/deleteemp/{idempleado}")    
    public String deleteEmpleado(Model m, @PathVariable int idempleado){    
        servicioEmp.deleteEmpleado(idempleado);
        m.addAttribute("mensaje", "Empleado eliminado con exito");
        log.debug("DEBUG - Empleado eliminado");
        return "redirect:/viewemp";
    }
}