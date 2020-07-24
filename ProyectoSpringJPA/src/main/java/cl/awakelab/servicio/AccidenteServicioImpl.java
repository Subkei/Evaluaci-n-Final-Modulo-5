package cl.awakelab.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.dao.Accidentes;
import cl.awakelab.dao.IAccidenteDAO;


@Service
public class AccidenteServicioImpl implements IAccidenteServicio {
	
	@Autowired
	IAccidenteDAO daoAcc;

	@Override
	public List<Accidentes> getAllAccidentes() {
		return (List<Accidentes>) daoAcc.findAll();
	}

	@Override
	public Accidentes getAccidenteById(int idaccidente) {
		return daoAcc.findOne(idaccidente);
	}

	@Override
	public void addAccidente(Accidentes saccidente) {
		daoAcc.save(saccidente);
		
	}

	@Override
	public void updateAccidente(Accidentes uaccidente, int idaccidente) {
		daoAcc.save(uaccidente);
		
	}

	@Override
	public void deleteAccidente(int idaccidente) {
		daoAcc.delete(idaccidente);
		
	}

	@Override
	public List<Accidentes> getAccidenteByFecha(String accidenteFecha) {
		daoAcc.findByfecha(accidenteFecha);
		return null;
	}

}
