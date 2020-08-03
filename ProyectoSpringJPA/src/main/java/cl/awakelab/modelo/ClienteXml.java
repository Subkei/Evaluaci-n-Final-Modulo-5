package cl.awakelab.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlAccessorType(value = XmlAccessType.FIELD)
@XmlRootElement(name="cliente")
@Entity
public class ClienteXml {

	@Id
	@GeneratedValue
	@XmlElement
	private int id;
	@XmlElement
	private String nombre;
	@XmlElement
	private int telefono;
	@XmlElement
	private String correoelectronico;
	@XmlElement
	private String rubro;
	@XmlElement
	private String direccion;
	
	
	public ClienteXml() {
		super();
	}


	public ClienteXml(int id, String nombre, int telefono, String correoelectronico, String rubro, String direccion) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.telefono = telefono;
		this.correoelectronico = correoelectronico;
		this.rubro = rubro;
		this.direccion = direccion;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public int getTelefono() {
		return telefono;
	}


	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}


	public String getCorreoelectronico() {
		return correoelectronico;
	}


	public void setCorreoelectronico(String correoelectronico) {
		this.correoelectronico = correoelectronico;
	}


	public String getRubro() {
		return rubro;
	}


	public void setRubro(String rubro) {
		this.rubro = rubro;
	}


	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

}