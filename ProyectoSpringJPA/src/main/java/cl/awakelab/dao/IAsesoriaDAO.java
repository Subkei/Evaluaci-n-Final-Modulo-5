package cl.awakelab.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface IAsesoriaDAO extends CrudRepository <Asesorias,Integer> {
	
	List<Asesorias> findByfecha(String fecha);

}
