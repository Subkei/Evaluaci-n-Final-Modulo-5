package cl.awakelab.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;



@Repository
public interface IAccidenteDAO extends CrudRepository <Accidentes,Integer>{
	
	List<Accidentes> findByfecha(String fecha);

}
