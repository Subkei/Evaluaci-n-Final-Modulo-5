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
	private String estado;
	
	private int visitas_idvisita;
	
	public Chequeo() {
		super();
	}

	public Chequeo(int idchequeo,String detalle, String estado, int visitas_idvisita) {
		super();
		this.idchequeo = idchequeo;
		this.detalle = detalle;
		this.estado = estado;
		this.visitas_idvisita = visitas_idvisita;	

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

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public int getVisitas_idvisita() {
		return visitas_idvisita;
	}

	public void setVisitas_idvisita(int visitas_idvisita) {
		this.visitas_idvisita = visitas_idvisita;
	}

	@Override
	public String toString() {
		return "Chequeo [idchequeo=" + idchequeo + ", detalle=" + detalle + ", estado=" + estado + ", visitas_idvisita="
				+ visitas_idvisita + "]";
	}
	
	
}