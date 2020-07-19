package cl.awakelab.ultimoproyecto.servicio;

import java.util.List;

import cl.awakelab.ultimoproyecto.modelo.Cliente;

public interface IClienteServicio {

	 List<Cliente> getAllClientes();
	 Cliente getClienteById(int id);
	 void addCliente(Cliente cliente);
	 void updateCliente(Cliente cliente);
	 void deleteCliente(int id);
	 List<Cliente> getClienteByNombre(String clienteNombre);

}
