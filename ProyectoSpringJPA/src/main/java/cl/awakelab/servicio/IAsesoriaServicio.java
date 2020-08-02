package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.modelo.Asesorias;


public interface IAsesoriaServicio {
	
	 List<Asesorias> getAllAsesorias();
	 Asesorias getAsesoriaById(int idasesoria);
	 void addAsesoria(Asesorias sasesoria);
	 void updateAsesoria(Asesorias uasesoria, int idasesoria);
	 void deleteAsesoria(int idasesoria);
	 List<Asesorias> getAsesoriaByFecha(String asesoriaFecha);


}