package cl.awakelab.modelo;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="cliente")
public class ClienteXml {

	
	private int id;
	private String nombre;
	private int telefono;
	private String correoelectronico;
	private String rubro;
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

	@XmlElement
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	@XmlElement
	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@XmlElement
	public int getTelefono() {
		return telefono;
	}


	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	@XmlElement
	public String getCorreoelectronico() {
		return correoelectronico;
	}


	public void setCorreoelectronico(String correoelectronico) {
		this.correoelectronico = correoelectronico;
	}

	@XmlElement
	public String getRubro() {
		return rubro;
	}


	public void setRubro(String rubro) {
		this.rubro = rubro;
	}

	@XmlElement
	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

}