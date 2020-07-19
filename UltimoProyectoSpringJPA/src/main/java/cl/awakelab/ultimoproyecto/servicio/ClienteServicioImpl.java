package cl.awakelab.ultimoproyecto.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.ultimoproyecto.dao.IClienteDAO;
import cl.awakelab.ultimoproyecto.modelo.Cliente;

@Service
public class ClienteServicioImpl implements IClienteServicio {

	@Autowired
	IClienteDAO daoCli;
	
	@Override
	public List<Cliente> getAllClientes() {
		return daoCli.findAll();
	}

	@Override
	public Cliente getClienteById(int id) {
		return daoCli.getOne(id);
	}

	@Override
	public void addCliente(Cliente cliente) {
		daoCli.save(cliente);
	}

	@Override
	public void updateCliente(Cliente cliente) {
		daoCli.save(cliente);
	}

	@Override
	public void deleteCliente(int id) {
		daoCli.deleteById(id);
	}

	@Override
	public List<Cliente> getClienteByNombre(String clienteNombre) {
		daoCli.findBynombre(clienteNombre);
		return null;
	}

}