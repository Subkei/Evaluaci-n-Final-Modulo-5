package cl.awakelab.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.modelo.Asesorias;
import cl.awakelab.modelo.IAsesoriaRepositorio;


@Service
public class AsesoriaServicioImpl implements IAsesoriaServicio{
	
	
	@Autowired
	IAsesoriaRepositorio reAss;

	@Override
	public List<Asesorias> getAllAsesorias() {
		return (List<Asesorias>) reAss.findAll();
	}

	@Override
	public Asesorias getAsesoriaById(int idasesoria) {
		return reAss.findOne(idasesoria);
	}

	@Override
	public void addAsesoria(Asesorias sasesoria) {
		reAss.save(sasesoria);
		
	}

	@Override
	public void updateAsesoria(Asesorias uasesoria, int idasesoria) {
		reAss.save(uasesoria);
		
	}

	@Override
	public void deleteAsesoria(int idasesoria) {
		reAss.delete(idasesoria);
		
	}

	@Override
	public List<Asesorias> getAsesoriaByFecha(String asesoriaFecha) {
		reAss.findByfecha(asesoriaFecha);
		return null;
	}

}