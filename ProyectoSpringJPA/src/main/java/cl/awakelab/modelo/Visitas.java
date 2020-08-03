package cl.awakelab.modelo;

import javax.persistence.*;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Visitas")
public class Visitas {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "VIS_SEQ")
    @SequenceGenerator(sequenceName = "visitas_seq", allocationSize = 1, name = "VIS_SEQ")
	
	@Column(name = "idvisita")
	private int idvisita;
	@NotEmpty
	private String direccion;
	@NotEmpty
	private String ciudad;
	@NotEmpty
	private String fecha;
	@NotEmpty
	private String resumen;
	
	private String observaciones;

	private int cliente_id;

	private int empleado_idempleado;
	
	@ManyToOne
	@JoinColumn(name="cliente_id", insertable = false, updatable = false)
	Cliente cliente;
	
	@ManyToOne
	@JoinColumn(name="empleado_idempleado", insertable = false, updatable = false)
	Empleado empleado;
	
	public Visitas() {
		super();
	}

	public Visitas(int idvisita, String direccion, String ciudad, String fecha, String resumen, String observaciones,
			Cliente cliente, Empleado empleado) {
		super();
		this.idvisita = idvisita;
		this.direccion = direccion;
		this.ciudad = ciudad;
		this.fecha = fecha;
		this.resumen = resumen;
		this.observaciones = observaciones;
		this.cliente = cliente;
		this.empleado = empleado;
	}

	public Visitas(int idvisita, String direccion, String ciudad, String fecha, String resumen, String observaciones,
			int cliente_id, int empleado_idempleado) {
		super();
		this.idvisita = idvisita;
		this.direccion = direccion;
		this.ciudad = ciudad;
		this.fecha = fecha;
		this.resumen = resumen;
		this.observaciones = observaciones;
		this.cliente_id = cliente_id;
		this.empleado_idempleado = empleado_idempleado;
	}

	public int getIdvisita() {
		return idvisita;
	}

	public void setIdvisita(int idvisita) {
		this.idvisita = idvisita;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getResumen() {
		return resumen;
	}

	public void setResumen(String resumen) {
		this.resumen = resumen;
	}

	public String getObservaciones() {
		return observaciones;
	}

	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

	public int getCliente_id() {
		return cliente_id;
	}

	public void setCliente_id(int cliente_id) {
		this.cliente_id = cliente_id;
	}

	public int getEmpleado_idempleado() {
		return empleado_idempleado;
	}

	public void setEmpleado_idempleado(int empleado_idempleado) {
		this.empleado_idempleado = empleado_idempleado;
	}

	public Cliente getCliente() {
		return cliente;
	}


	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Empleado getEmpleado() {
		return empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}

	@Override
	public String toString() {
		return "Visitas [idvisita=" + idvisita + ", direccion=" + direccion + ", ciudad=" + ciudad + ", fecha=" + fecha
				+ ", resumen=" + resumen + ", observaciones=" + observaciones + ", cliente=" + cliente
				+ ", empleado=" + empleado + "]";
	}
	
}