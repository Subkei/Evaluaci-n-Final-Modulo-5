package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.dao.Cliente;

public interface IClienteServicio {

	 List<Cliente> getAllClientes();
	 Cliente getClienteById(int id);
	 void addCliente(Cliente scliente);
	 void updateCliente(Cliente ucliente, int id);
	 void deleteCliente(int id);
	 List<Cliente> getClienteByNombre(String clienteNombre);

}
