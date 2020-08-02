package cl.awakelab.controlador;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cl.awakelab.modelo.Cliente;
import cl.awakelab.modelo.ClienteXml;
import cl.awakelab.modelo.ClienteXmlLista;
import cl.awakelab.servicio.IClienteServicio;

@RestController
public class ClienteXmlControlador {

	
	@Autowired
	IClienteServicio cs;

	@RequestMapping(value = "/clilistxml", method = RequestMethod.GET,  produces="application/json; charset=ISO-8859-1")
	public ClienteXmlLista getClientes() {
		ClienteXmlLista clientesxml = new ClienteXmlLista();
		List<Cliente> listacli = cs.getAllClientes();
		List<ClienteXml> listaclixml = new ArrayList<ClienteXml>();

		for (int i = 0; i < listacli.size(); i++) {
			Cliente c = listacli.get(i);
			ClienteXml cx = new ClienteXml();
			cx.setId(c.getId());
			cx.setNombre(c.getNombre());
			cx.setRubro(c.getRubro());
			cx.setTelefono(c.getTelefono());
			cx.setCorreoelectronico(c.getCorreoelectronico());
			cx.setDireccion(c.getDireccion());
			listaclixml.add(cx);
		}

		clientesxml.setListaclientes(listaclixml);
		return clientesxml;
	}
}