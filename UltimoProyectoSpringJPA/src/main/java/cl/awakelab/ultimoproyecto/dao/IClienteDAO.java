package cl.awakelab.ultimoproyecto.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.awakelab.ultimoproyecto.modelo.Cliente;    

@Repository
public interface IClienteDAO extends JpaRepository<Cliente, Integer> {

	List<Cliente> findBynombre(String nombre);
}