  
package cl.awakelab.servicio;

import java.util.List;

import cl.awakelab.modelo.Empleado;

public interface IEmpleadoServicio {
	
	List<Empleado> getAllEmpleados();
	 Empleado getEmpleadoById(int idempleado);
	 void addEmpleado(Empleado empleado);
	 void updateEmpleado(Empleado empleado);
	 void deleteEmpleado(int idempleado);
	 List<Empleado> getEmpleadoByNombre(String empleadoNombre);
}
