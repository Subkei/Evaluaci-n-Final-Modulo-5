package cl.awakelab.modelo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface IClienteRepositorio extends CrudRepository<Cliente, Integer> {

	List<Cliente> findBynombre(String nombre);
}