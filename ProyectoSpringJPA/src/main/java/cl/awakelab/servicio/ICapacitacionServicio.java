  
package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.modelo.Capacitacion;

public interface ICapacitacionServicio {
	
	List<Capacitacion> getAllCapacitacion();
	Capacitacion getCapacitacionById(int idcapacitacion);
	 void addCapacitacion(Capacitacion scapacitacion);
	 void updateCapacitacion(Capacitacion ucapacitacion, int idcapacitacion);
	 void deleteCapacitacion(int idcapacitacion);
	 List<Capacitacion> getCapacitacionByFecha(String capacitacionFecha);


}