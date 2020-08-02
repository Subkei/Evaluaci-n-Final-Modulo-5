package cl.awakelab.servicio;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.modelo.Capacitacion;
import cl.awakelab.modelo.ICapacitacionRepositorio;
@Service
public class CapacitacionServicioImpl implements ICapacitacionServicio {

	@Autowired
	ICapacitacionRepositorio daoCap;
	
	
	@Override
	public List<Capacitacion> getAllCapacitacion() {
		
		return (List<Capacitacion>)daoCap.findAll();
	}

	@Override
	public Capacitacion getCapacitacionById(int idcapacitacion) {
		return daoCap.findOne(idcapacitacion);
		
	}

	@Override
	public void addCapacitacion(Capacitacion scapacitacion) {
		daoCap.save(scapacitacion);
		
	}

	@Override
	public void updateCapacitacion(Capacitacion ucapacitacion, int idcapacitacion) {
		daoCap.save(ucapacitacion);
		
	}

	@Override
	public void deleteCapacitacion(int idcapacitacion) {
		daoCap.delete(idcapacitacion);
	}

	@Override
	public List<Capacitacion> getCapacitacionByFecha(String capacitacionFecha) {
		//daoCap.findBynombre(capacitacionFecha);
		return null;
	}

}