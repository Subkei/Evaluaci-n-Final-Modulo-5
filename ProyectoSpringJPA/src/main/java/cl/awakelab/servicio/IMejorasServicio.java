package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.modelo.Mejoras;

public interface IMejorasServicio {
	
	List<Mejoras> getAllMejoras();
	 Mejoras getMejoraById(int idmejora);
	 void addMejora(Mejoras mejora);
	 void updateMejora(Mejoras mejora);
	 void deleteMejora(int idmejora);
	 List<Mejoras> getMejorasByFecha(String mejorasFecha);
}