package cl.awakelab.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.dao.Asesorias;

import cl.awakelab.dao.IAsesoriaDAO;


@Service
public class AsesoriaServicioImpl implements IAsesoriaServicio{
	
	
	@Autowired
	IAsesoriaDAO daoAss;

	@Override
	public List<Asesorias> getAllAsesorias() {
		return (List<Asesorias>) daoAss.findAll();
	}

	@Override
	public Asesorias getAsesoriaById(int idasesoria) {
		return daoAss.findOne(idasesoria);
	}

	@Override
	public void addAsesoria(Asesorias sasesoria) {
		daoAss.save(sasesoria);
		
	}

	@Override
	public void updateAsesoria(Asesorias uasesoria, int idasesoria) {
		daoAss.save(uasesoria);
		
	}

	@Override
	public void deleteAsesoria(int idasesoria) {
		daoAss.delete(idasesoria);
		
	}

	@Override
	public List<Asesorias> getAsesoriaByFecha(String asesoriaFecha) {
		daoAss.findByfecha(asesoriaFecha);
		return null;
	}

}
