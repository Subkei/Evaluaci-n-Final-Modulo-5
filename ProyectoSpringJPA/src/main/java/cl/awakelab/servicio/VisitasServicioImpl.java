package cl.awakelab.servicio;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.modelo.IVisitasRepositorio;
import cl.awakelab.modelo.Visitas;

@Service

public class VisitasServicioImpl implements IVisitasServicio {

	@Autowired
	IVisitasRepositorio daoVis;
	
	@Override
	public List<Visitas> getAllVisitas() {
		return (List<Visitas>) daoVis.findAll();
		
	}

	@Override
	public Visitas getVisitasById(int idvisitas) {
		return daoVis.findOne(idvisitas);
	}

	@Override
	public void addVisitas(Visitas svisitas) {
		daoVis.save(svisitas);
		
	}

	@Override
	public void updateVisitas(Visitas uvisitas, int idvisitas) {
		daoVis.save(uvisitas);
		
	}

	@Override
	public void deleteVisitas(int idvisitas) {
		daoVis.delete(idvisitas);
		
	}

	@Override
	public List<Visitas> getVisitasByDireccion(String visitasdireccion) {
		//daoVis.findBynombre(visitasdireccion);
		return null;
	}

}