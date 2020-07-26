package cl.awakelab.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import cl.awakelab.dao.Cliente;
import cl.awakelab.servicio.IClienteServicio;

@RestController
public class ClienteJsonControlador {

	@Autowired
	IClienteServicio servicioCli;
	//crear clientes json
	@PostMapping(value = "/clilist", headers = "Accept=application/json")
	public void addCliente(@RequestBody Cliente cliente) {
		servicioCli.addCliente(cliente);
	}
	//editar clientes json
	@PutMapping(value = "/clilist", headers = "Accept=application/json")
	public void updateCliente(@RequestBody Cliente cliente) {
		servicioCli.updateCliente(cliente);
	}
	//listar clientes json
	@GetMapping(value = "/clilist", headers = "Accept=application/json")
	public List<Cliente> getAllClientes() {
		List<Cliente> listcli = servicioCli.getAllClientes();
		return listcli;
	}
	//buscar clientes json por id
	@GetMapping(value = "/clidetalle/{id}", headers = "Accept=application/json")
	public Cliente getClienteById(@PathVariable int id) {
		return servicioCli.getClienteById(id);
	}
	//eliminar clientes json por id
	@RequestMapping(value = "/clidetalle/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteCliente(@PathVariable("id") int id) {
		servicioCli.deleteCliente(id);
	}

}
