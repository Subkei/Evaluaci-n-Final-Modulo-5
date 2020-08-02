package cl.awakelab.modelo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IMejorasRepositorio extends CrudRepository<Mejoras, Integer> {
	
	
	List<Mejoras> findByfecha(String fecha);
}
