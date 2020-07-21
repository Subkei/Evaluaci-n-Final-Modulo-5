package cl.awakelab.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface IClienteDAO extends CrudRepository<Cliente, Integer> {

	List<Cliente> findBynombre(String nombre);
}