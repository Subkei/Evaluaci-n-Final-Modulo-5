package cl.awakelab.servicio;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.modelo.Empleado;
import cl.awakelab.modelo.IEmpleadoRepositorio;

@Service
public class EmpleadoServicioImpl implements IEmpleadoServicio {
	
	@Autowired
	IEmpleadoRepositorio remp;

	@Override
	public List<Empleado> getAllEmpleados() {
		return (List<Empleado>) remp.findAll();
	}

	@Override
	public Empleado getEmpleadoById(int idempleado) {
		return remp.findOne(idempleado);
	}

	@Override
	public void addEmpleado(Empleado empleado) {
		remp.save(empleado);		
	}

	@Override
	public void updateEmpleado(Empleado empleado) {
		remp.save(empleado);		
	}

	@Override
	public void deleteEmpleado(int idempleado) {
		remp.delete(idempleado);		
	}

	@Override
	public List<Empleado> getEmpleadoByNombre(String empleadoNombre) {
		remp.findBynombre(empleadoNombre);
		return null;
	}

}