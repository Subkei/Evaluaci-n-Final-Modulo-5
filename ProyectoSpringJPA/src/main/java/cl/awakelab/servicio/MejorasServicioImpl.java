package cl.awakelab.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.modelo.IMejorasRepositorio;
import cl.awakelab.modelo.Mejoras;

@Service
public class MejorasServicioImpl implements IMejorasServicio{
	
	@Autowired
	IMejorasRepositorio reMej;

	@Override
	public List<Mejoras> getAllMejoras() {
		return (List<Mejoras>) reMej.findAll();
	}

	@Override
	public Mejoras getMejoraById(int idmejora) {
		return reMej.findOne(idmejora);
	}

	@Override
	public void addMejora(Mejoras mejora) {
		reMej.save(mejora);		
	}

	@Override
	public void updateMejora(Mejoras mejora) {
		reMej.save(mejora);
	}

	@Override
	public void deleteMejora(int idmejora) {
		reMej.delete(idmejora);
	}

	

	@Override
	public List<Mejoras> getMejorasByFecha(String mejorasFecha) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}