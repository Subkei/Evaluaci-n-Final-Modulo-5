package cl.awakelab.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.modelo.Accidentes;
import cl.awakelab.modelo.IAccidenteRepositorio;


@Service
public class AccidenteServicioImpl implements IAccidenteServicio {
	
	@Autowired
	IAccidenteRepositorio reAcc;

	@Override
	public List<Accidentes> getAllAccidentes() {
		return (List<Accidentes>) reAcc.findAll();
	}

	@Override
	public Accidentes getAccidenteById(int idaccidente) {
		return reAcc.findOne(idaccidente);
	}

	@Override
	public void addAccidente(Accidentes accidente) {
		reAcc.save(accidente);
		
	}

	@Override
	public void updateAccidente(Accidentes accidente, int idaccidente) {
		reAcc.save(accidente);
		
	}

	@Override
	public void deleteAccidente(int idaccidente) {
		reAcc.delete(idaccidente);
		
	}

	@Override
	public List<Accidentes> getAccidenteByFecha(String accidenteFecha) {
		reAcc.findByfecha(accidenteFecha);
		return null;
	}

}