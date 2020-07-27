package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.modelo.Cliente;

public interface IClienteServicio {

	 List<Cliente> getAllClientes();
	 Cliente getClienteById(int id);
	 void addCliente(Cliente scliente);
	 void updateCliente(Cliente ucliente);
	 void deleteCliente(int id);
	 List<Cliente> getClienteByNombre(String clienteNombre);

}
