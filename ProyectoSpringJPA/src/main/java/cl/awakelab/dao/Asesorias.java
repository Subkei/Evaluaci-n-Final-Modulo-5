package cl.awakelab.dao;

import javax.persistence.*;

@Entity
//@Table(name = "Asesoria")
public class Asesorias {

	
		@Id
		@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ASS_SEQ")
	    @SequenceGenerator(sequenceName = "asesorias_seq", allocationSize = 1, name = "ASS_SEQ")
		
		@Column(name = "idasesoria")
		private int idasesoria;
		private String detalle;
		private String gestion;
		private String propuestas;
		private String fecha;
		private String especial;
		private int visitas_idvisita;
		
		
		
		public Asesorias(int idasesoria, String detalle, String gestion, String propuestas, String fecha,
				String especial, int visitas_idvisita) {
			super();
			this.idasesoria = idasesoria;
			this.detalle = detalle;
			this.gestion = gestion;
			this.propuestas = propuestas;
			this.fecha = fecha;
			this.especial = especial;
			this.visitas_idvisita = visitas_idvisita;
		}



		public Asesorias() {
			super();
		}



		public int getIdasesoria() {
			return idasesoria;
		}



		public void setIdasesoria(int idasesoria) {
			this.idasesoria = idasesoria;
		}



		public String getDetalle() {
			return detalle;
		}



		public void setDetalle(String detalle) {
			this.detalle = detalle;
		}



		public String getGestion() {
			return gestion;
		}



		public void setGestion(String gestion) {
			this.gestion = gestion;
		}



		public String getPropuestas() {
			return propuestas;
		}



		public void setPropuestas(String propuestas) {
			this.propuestas = propuestas;
		}



		public String getFecha() {
			return fecha;
		}



		public void setFecha(String fecha) {
			this.fecha = fecha;
		}



		public String getEspecial() {
			return especial;
		}



		public void setEspecial(String especial) {
			this.especial = especial;
		}



		public int getVisitas_idvisita() {
			return visitas_idvisita;
		}



		public void setVisitas_idvisita(int visitas_idvisita) {
			this.visitas_idvisita = visitas_idvisita;
		}



		@Override
		public String toString() {
			return "Asesorias [idasesoria=" + idasesoria + ", detalle=" + detalle + ", gestion=" + gestion
					+ ", propuestas=" + propuestas + ", fecha=" + fecha + ", especial=" + especial
					+ ", visitas_idvisita=" + visitas_idvisita + "]";
		}
		
		
		
}
