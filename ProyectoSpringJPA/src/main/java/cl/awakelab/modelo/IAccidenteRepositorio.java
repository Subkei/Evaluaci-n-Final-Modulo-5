package cl.awakelab.modelo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IAccidenteRepositorio extends CrudRepository <Accidentes,Integer>{
	
	List<Accidentes> findByfecha(String fecha);
	List<Accidentes> findAllByCliente_id(int cliente_id);

}