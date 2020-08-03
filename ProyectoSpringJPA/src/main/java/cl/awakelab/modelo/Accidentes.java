package cl.awakelab.modelo;


import javax.persistence.*;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Accidentes")
public class Accidentes {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ACC_SEQ")
    @SequenceGenerator(sequenceName = "accidentes_seq", allocationSize = 1, name = "ACC_SEQ")
	
	@Column(name = "idaccidente")	
	private int idaccidente;
	@NotEmpty
	private String fecha;
	@NotEmpty
	private String hora;
	@NotEmpty
	private String suceso;
	@NotEmpty
	private String lugar;
	@NotNull
	private int cliente_id;
	
	@ManyToOne
	@JoinColumn(name="cliente_id", insertable = false, updatable = false)
	Cliente cliente;
	
	public Accidentes() {
		super();
	}

	public Accidentes(int idaccidente, String fecha, String hora, String suceso, String lugar, Cliente cliente) {
		super();
		this.idaccidente = idaccidente;
		this.fecha = fecha;
		this.hora = hora;
		this.suceso = suceso;
		this.lugar = lugar;
		this.cliente = cliente;
	}	
		
	public Accidentes(int idaccidente, String fecha, String hora, String suceso, String lugar, int cliente_id) {
		super();
		this.idaccidente = idaccidente;
		this.fecha = fecha;
		this.hora = hora;
		this.suceso = suceso;
		this.lugar = lugar;
		this.cliente_id = cliente_id;
	}

	public int getIdaccidente() {
		return idaccidente;
	}

	public void setIdaccidente(int idaccidente) {
		this.idaccidente = idaccidente;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public String getSuceso() {
		return suceso;
	}

	public void setSuceso(String suceso) {
		this.suceso = suceso;
	}

	public String getLugar() {
		return lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public int getCliente_id() {
		return cliente_id;
	}

	public void setCliente_id(int cliente_id) {
		this.cliente_id = cliente_id;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	@Override
	public String toString() {
		return "Accidentes [idaccidente=" + idaccidente + ", fecha=" + fecha + ", hora=" + hora + ", suceso=" + suceso
				+ ", lugar=" + lugar + ", cliente_id=" + cliente_id + "]";
	}
	
}		