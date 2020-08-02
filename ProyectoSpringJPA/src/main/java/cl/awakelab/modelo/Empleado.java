package cl.awakelab.modelo;

import javax.persistence.*;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Empleado")
public class Empleado {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "EMP_SEQ")
    @SequenceGenerator(sequenceName = "empleado_seq", allocationSize = 1, name = "EMP_SEQ")
	
	@Column(name="idempleado")
	private int idempleado;
	@NotEmpty
	private String nombre;
	@NotEmpty
	private String especialidad;

	public Empleado() {
		super();
	}

	public Empleado(int idempleado, String nombre, String especialidad) {
		super();
		this.idempleado = idempleado;
		this.nombre = nombre;
		this.especialidad = especialidad;
	}

	public int getIdempleado() {
		return idempleado;
	}

	public void setIdempleado(int idempleado) {
		this.idempleado = idempleado;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}

	@Override
	public String toString() {
		return "Empleado [idempleado=" + idempleado + ", nombre=" + nombre + ", especialidad=" + especialidad + "]";
	}
	
	
}