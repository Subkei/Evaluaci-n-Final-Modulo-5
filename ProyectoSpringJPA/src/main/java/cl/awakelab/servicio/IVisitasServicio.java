package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.modelo.Visitas;

public interface IVisitasServicio {

	List<Visitas> getAllVisitas();
	Visitas getVisitasById(int idvisitas);
	 void addVisitas(Visitas svisitas);
	 void updateVisitas(Visitas uvisitas, int idvisitas);
	 void deleteVisitas(int idvisitas);
	 List<Visitas> getVisitasByDireccion(String visitasdireccion);
	
}