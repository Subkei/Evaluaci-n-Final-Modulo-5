package cl.awakelab.modelo;

//import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface ICapacitacionRepositorio extends CrudRepository<Capacitacion, Integer> {

	//List<Capacitacion> findBynombre(String fecha);
}