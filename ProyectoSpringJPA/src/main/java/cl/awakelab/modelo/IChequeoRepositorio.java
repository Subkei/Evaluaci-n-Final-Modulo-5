package cl.awakelab.modelo;

//import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IChequeoRepositorio extends CrudRepository<Chequeo, Integer> {

	//List<Chequeo> findBynombre(String nombre);

}