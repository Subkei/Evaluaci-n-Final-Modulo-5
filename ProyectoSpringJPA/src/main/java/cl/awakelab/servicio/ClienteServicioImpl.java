package cl.awakelab.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.dao.IClienteDAO;
import cl.awakelab.dao.Cliente;

@Service
public class ClienteServicioImpl implements IClienteServicio {

	@Autowired
	IClienteDAO daoCli;
	
	@Override
	public List<Cliente> getAllClientes() {
		return (List<Cliente>) daoCli.findAll();
	}

	@Override
	public Cliente getClienteById(int id) {
		return daoCli.findOne(id);
	}

	@Override
	public void addCliente(Cliente scliente) {
		daoCli.save(scliente);
	}

	@Override
	public void updateCliente(Cliente ucliente) {
		daoCli.save(ucliente);
	}

	@Override
	public void deleteCliente(int id) {
		daoCli.delete(id);
	}

	@Override
	public List<Cliente> getClienteByNombre(String clienteNombre) {
		daoCli.findBynombre(clienteNombre);
		return null;
	}

}