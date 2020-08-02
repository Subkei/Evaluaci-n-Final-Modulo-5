package cl.awakelab.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name ="Chequeo")
public class Chequeo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CHEC_SEQ")
    @SequenceGenerator(sequenceName = "chequeo_seq", allocationSize = 1, name = "CHEC_SEQ")
	
	@Column(name = "idchequeo")
	private int idchequeo;
	@NotEmpty
	private String detalle;
	@NotEmpty
	private int estado;
	
	private String idvisita;
	
	public Chequeo() {
		super();
	}

	public Chequeo(int idchequeo,String detalle, int estado, String idvisita) {
		super();
		this.idchequeo = idchequeo;
		this.detalle = detalle;
		this.estado = estado;
		this.idvisita = idvisita;	

	}

	public int getIdchequeo() {
		return idchequeo;
	}

	public void setIdchequeo(int idchequeo) {
		this.idchequeo = idchequeo;
	}

	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}

	public String getIdvisita() {
		return idvisita;
	}

	public void setIdvisita(String idvisita) {
		this.idvisita = idvisita;
	}

	@Override
	public String toString() {
		return "Chequeo [idchequeo=" + idchequeo + ", detalle=" + detalle + ", estado=" + estado + ", idvisita="
				+ idvisita + "]";
	}
	
	
}