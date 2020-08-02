package cl.awakelab.modelo;

import javax.persistence.*;
//import javax.validation.constraints.Pattern;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Mejoras")
public class Mejoras {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "MEJ_SEQ")
    @SequenceGenerator(sequenceName = "mejora_seq", allocationSize = 1, name = "MEJ_SEQ")

	@Column(name="idmejora")
	private int idmejora;
	@NotEmpty
	private String fecha;
	@NotEmpty
	private String motivo;
	@NotEmpty
	private String actividades;
	//@Pattern(solo letras)
	private String estado;
	@NotNull
	private int cliente_id;

	public Mejoras() {
		super();
	}

	public Mejoras(int idmejora, String fecha, String motivo, String actividades, String estado, int cliente_id) {
		super();
		this.idmejora = idmejora;
		this.fecha = fecha;
		this.motivo = motivo;
		this.actividades = actividades;
		this.estado = estado;
		this.cliente_id = cliente_id;
	}

	public int getIdmejora() {
		return idmejora;
	}

	public void setIdmejora(int idmejora) {
		this.idmejora = idmejora;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getMotivo() {
		return motivo;
	}

	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}

	public String getActividades() {
		return actividades;
	}

	public void setActividades(String actividades) {
		this.actividades = actividades;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public int getCliente_id() {
		return cliente_id;
	}

	public void setCliente_id(int cliente_id) {
		this.cliente_id = cliente_id;
	}

	@Override
	public String toString() {
		return "Mejoras [idmejora=" + idmejora + ", fecha=" + fecha + ", motivo=" + motivo + ", actividades="
				+ actividades + ", estado=" + estado + ", cliente_id=" + cliente_id + "]";
	}
	
	
}