package cl.awakelab.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.modelo.IPagosRepositorio;
import cl.awakelab.modelo.Pagos;

@Service
public class PagosServicioImpl implements IPagosServicio{

	@Autowired
	IPagosRepositorio daoPag;
	
	@Override
	public List<Pagos> getAllPagos() {
		return (List<Pagos>) daoPag.findAll();
	}

	@Override
	public Pagos getPagosById(int idpago) {
		return daoPag.findOne(idpago);
	}

	@Override
	public void addPagos(Pagos spagos) {
		daoPag.save(spagos);
	}

	@Override
	public void updatePagos(Pagos upagos) {
		daoPag.save(upagos);
	}

	@Override
	public void deletePagos(int idpago) {
		daoPag.delete(idpago);
	}

}
