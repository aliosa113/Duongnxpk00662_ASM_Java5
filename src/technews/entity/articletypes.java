package technews.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class articletypes {

	@Id
	@GeneratedValue
	private Integer idtype;
	private String name;
	private String notes;
	
	@OneToMany(mappedBy = "articletype", fetch = FetchType.EAGER)
	private Collection<articles> article;

	public articletypes() {
		super();
	}

	public articletypes(String name, String notes, Collection<articles> article) {
		super();
		this.name = name;
		this.notes = notes;
		this.article = article;
	}

	public articletypes(Integer idtype, String name, String notes, Collection<articles> article) {
		super();
		this.idtype = idtype;
		this.name = name;
		this.notes = notes;
		this.article = article;
	}

	public Integer getIdtype() {
		return idtype;
	}

	public void setIdtype(Integer idtype) {
		this.idtype = idtype;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Collection<articles> getArticle() {
		return article;
	}

	public void setArticle(Collection<articles> article) {
		this.article = article;
	}
	
}
