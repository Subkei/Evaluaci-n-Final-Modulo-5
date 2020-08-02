package cl.awakelab.modelo;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "cliente-lista")
public class ClienteXmlLista {

	
	List<ClienteXml> listaclientes;

	public ClienteXmlLista(List<ClienteXml> listaclientes) {
		super();
		this.listaclientes = listaclientes;
	}

	public ClienteXmlLista() {
		super();
	}

	public List<ClienteXml> getListaclientes() {
		return listaclientes;
	}
	
	@XmlElement(name="cliente")
	public void setListaclientes(List<ClienteXml> listaclientes) {
		this.listaclientes = listaclientes;
	}

}