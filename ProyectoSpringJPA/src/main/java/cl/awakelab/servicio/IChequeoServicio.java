package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.modelo.Chequeo;

public interface IChequeoServicio {
	
	 List<Chequeo> getAllChequeos();
	 Chequeo getChequeoById(int idchequeo);
	 void addChequeo(Chequeo chequeo);
	 void updateChequeo(Chequeo chequeo);
	 void deleteChequeo(int idchequeo);

}
