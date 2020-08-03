package cl.awakelab.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.modelo.Chequeo;
import cl.awakelab.modelo.IChequeoRepositorio;

@Service
public class ChequeoServicioImpl implements IChequeoServicio {

	@Autowired
	IChequeoRepositorio repChec;
	
	@Override
	public List<Chequeo> getAllChequeos() {
		return (List<Chequeo>) repChec.findAll();
	}

	@Override
	public Chequeo getChequeoById(int idchequeo) {
		return repChec.findOne(idchequeo);
	}

	@Override
	public void addChequeo(Chequeo chequeo) {
		repChec.save(chequeo);
	}

	@Override
	public void updateChequeo(Chequeo chequeo) {
		repChec.save(chequeo);
	}

	@Override
	public void deleteChequeo(int idchequeo) {
		repChec.delete(idchequeo);
	}	

}