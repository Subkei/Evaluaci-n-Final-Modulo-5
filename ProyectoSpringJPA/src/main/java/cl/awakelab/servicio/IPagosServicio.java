package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.dao.Pagos;

public interface IPagosServicio {

	List<Pagos> getAllPagos();
	Pagos getPagosById(int idpago);
	void addPagos(Pagos spagos);
	void updatePagos(Pagos upagos);
	void deletePagos(int idpago);
}
