package technews.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table
public class comments {

	@Id
	@GeneratedValue
	private Integer idcomment;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
	private Date date;
	private String comment;

	@ManyToOne
	@JoinColumn(name = "iduser")
	private users usercomment;

	@ManyToOne
	@JoinColumn(name = "idarticle")
	private articles article;

	@OneToMany(mappedBy = "comment", fetch = FetchType.EAGER)
	private Collection<subcomments> subcomment;

	public comments() {
		super();
	}

	public comments(Date date, String comment, users usercomment, articles article,
			Collection<subcomments> subcomment) {
		super();
		this.date = date;
		this.comment = comment;
		this.usercomment = usercomment;
		this.article = article;
		this.subcomment = subcomment;
	}

	public comments(Integer idcomment, Date date, String comment, users usercomment, articles article,
			Collection<subcomments> subcomment) {
		super();
		this.idcomment = idcomment;
		this.date = date;
		this.comment = comment;
		this.usercomment = usercomment;
		this.article = article;
		this.subcomment = subcomment;
	}

	public Integer getIdcomment() {
		return idcomment;
	}

	public void setIdcomment(Integer idcomment) {
		this.idcomment = idcomment;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public users getUsercomment() {
		return usercomment;
	}

	public void setUsercomment(users usercomment) {
		this.usercomment = usercomment;
	}

	public articles getArticle() {
		return article;
	}

	public void setArticle(articles article) {
		this.article = article;
	}

	public Collection<subcomments> getSubcomment() {
		return subcomment;
	}

	public void setSubcomment(Collection<subcomments> subcomment) {
		this.subcomment = subcomment;
	}
	
}
