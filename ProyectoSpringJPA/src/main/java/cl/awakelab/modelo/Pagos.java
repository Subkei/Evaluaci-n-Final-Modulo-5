package cl.awakelab.modelo;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;

@Entity
public class Pagos {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "PAG_SEQ")
    @SequenceGenerator(sequenceName = "pagos_seq", allocationSize = 1, name = "PAG_SEQ")
	
	private int idpago;
	@NotEmpty
	private String mesanio;
	@NumberFormat
	private int montoregular;
	@NumberFormat
	private int montoadicionales;
	@NotNull
	private int cliente_id;
	
	@ManyToOne
	@JoinColumn(name="cliente_id", insertable = false, updatable = false)
	Cliente cliente;

	public Pagos() {
	}

	public Pagos(int idpago, String mesanio, int montoregular, int montoadicionales, Cliente cliente) {
		this.idpago = idpago;
		this.mesanio = mesanio;
		this.montoregular = montoregular;
		this.montoadicionales = montoadicionales;
		this.cliente = cliente;
	}
	
	
	
	public Pagos(int idpago, String mesanio, int montoregular, int montoadicionales, int cliente_id) {
		super();
		this.idpago = idpago;
		this.mesanio = mesanio;
		this.montoregular = montoregular;
		this.montoadicionales = montoadicionales;
		this.cliente_id = cliente_id;
	}

	public int getIdpago() {
		return idpago;
	}
	
	public void setIdpago(int idpago) {
		this.idpago = idpago;
	}
	
	public String getMesanio() {
		return mesanio;
	}
	
	public void setMesanio(String mesanio) {
		this.mesanio = mesanio;
	}
	
	public int getMontoregular() {
		return montoregular;
	}

	public void setMontoregular(int montoregular) {
		this.montoregular = montoregular;
	}


	public int getMontoadicionales() {
		return montoadicionales;
	}


	public void setMontoadicionales(int montoadicionales) {
		this.montoadicionales = montoadicionales;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	
	public int getCliente_id() {
		return cliente_id;
	}

	public void setCliente_id(int cliente_id) {
		this.cliente_id = cliente_id;
	}

	@Override
	public String toString() {
		return "Pagos [idpago=" + idpago + ", mesanio=" + mesanio + ", montoregular=" + montoregular
				+ ", montoadicionales=" + montoadicionales + ", cliente=" + cliente + "]";
	}


	
}
