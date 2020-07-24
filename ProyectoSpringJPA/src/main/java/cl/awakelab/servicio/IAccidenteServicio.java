package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.dao.Accidentes;


public interface IAccidenteServicio {
	
	
	List<Accidentes> getAllAccidentes();
	Accidentes getAccidenteById(int idaccidente);
	 void addAccidente(Accidentes saccidente);
	 void updateAccidente(Accidentes uaccidente, int idaccidente);
	 void deleteAccidente(int idaccidente);
	 List<Accidentes> getAccidenteByFecha(String accidenteFecha);

}
