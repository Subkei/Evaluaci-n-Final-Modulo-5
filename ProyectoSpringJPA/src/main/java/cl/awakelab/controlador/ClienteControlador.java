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

import cl.awakelab.dao.Cliente;
import cl.awakelab.servicio.IClienteServicio;

@Controller
public class ClienteControlador {

	@Autowired
	IClienteServicio servicioCli;
	
	static Logger log = Logger.getLogger(ClienteControlador.class.getName());
	
	@RequestMapping("/")
	public String index() {
		//m.addAttribute("mensaje", "Bienvenido usuario");
		return "index";
		
	}
	//vista formulario cliente
    @RequestMapping("/cliform")    
    public String addCliente(Model m){    
        m.addAttribute("cliente", new Cliente());
        log.info("Ingreso a formulario de creación de clientes");
        return "cliform";
    } 
    //guardar formulario cliente
    @PostMapping("/clisave")    
    public String addClienteSave(@ModelAttribute("cliente") @Validated Cliente cliente, BindingResult result, Model m){    
        
    	if(result.hasErrors()) {
    		return "cliform";
    	}
    	else {
    		servicioCli.addCliente(cliente);
    		m.addAttribute("mensaje", "Cliente creado con exito");
    		m.addAttribute("nombre", cliente.getNombre());
    		m.addAttribute("telefono", cliente.getTelefono());
    		m.addAttribute("correoelectronico", cliente.getCorreoelectronico());
    		m.addAttribute("rubro", cliente.getRubro());
    		m.addAttribute("direccion", cliente.getDireccion());
    	}
        log.info("Cliente creado: " + cliente.toString());
        return "clisaved";
    }
    //mostrar listado clientes
    @GetMapping(value="/viewcli", headers = "Accept=applicatin/json")    
    public String getClienteList(Model m){    
        List<Cliente> listcli= servicioCli.getAllClientes();
        m.addAttribute("listaclientes",listcli);
        log.info("Listado de clientes");
        return "viewcli";
    }
    //busqueda por ID de cliente (detalle)
    @GetMapping(value="/cliente/{id}")
    public String Cliente(Model m, @PathVariable int id) {
    	Cliente cli = servicioCli.getClienteById(id);
    	m.addAttribute("clienteData",cli);
    	return "clidetalle";
    }
    //formulario actualizar cliente
    @RequestMapping(value="/editcli/{id}")    
    public String updateCliente(Model m, @PathVariable int id){    
        Cliente cli = new Cliente();
        cli = servicioCli.getClienteById(id);
        m.addAttribute("cliente",cli);
        log.info("Ingreso a edición de clientes");
        return "clieditform";
    }
    //guardar formulario actualizar cliente
    @RequestMapping("/clieditsave")    
    public String updateClienteSave(@ModelAttribute("cliente") Cliente cliente, BindingResult result, Model m){
       
    	if(result.hasErrors()) {
    	   return "clieditform";
       }
       else {
    	   servicioCli.updateCliente(cliente, cliente.getId());
    	m.addAttribute("mensaje", "Cliente actualizado con exito");
       }
    	log.info("Procesando edición de clientes");
        return "redirect:/viewcli";
    }
    //eliminar cliente
    @GetMapping(value="/deletecli/{id}")    
    public String deleteCliente(Model m, @PathVariable int id){    
        servicioCli.deleteCliente(id);
        m.addAttribute("mensaje", "Cliente eliminado con exito");
        log.debug("DEBUG - Cliente eliminado");
        return "redirect:/viewcli";
    }
}