package technews.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table
public class subcomments {

	@Id
	@GeneratedValue
	private Integer idsubcomment;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
	private Date date;
	private String subcomment;

	@ManyToOne
	@JoinColumn(name = "iduser")
	private users usersubcomment;

	@ManyToOne
	@JoinColumn(name = "idcomment")
	private comments comment;

	public subcomments() {
		super();
	}

	public subcomments(Date date, String subcomment, users usersubcomment, comments comment) {
		super();
		this.date = date;
		this.subcomment = subcomment;
		this.usersubcomment = usersubcomment;
		this.comment = comment;
	}

	public subcomments(Integer idsubcomment, Date date, String subcomment, users usersubcomment, comments comment) {
		super();
		this.idsubcomment = idsubcomment;
		this.date = date;
		this.subcomment = subcomment;
		this.usersubcomment = usersubcomment;
		this.comment = comment;
	}

	public Integer getIdsubcomment() {
		return idsubcomment;
	}

	public void setIdsubcomment(Integer idsubcomment) {
		this.idsubcomment = idsubcomment;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getSubcomment() {
		return subcomment;
	}

	public void setSubcomment(String subcomment) {
		this.subcomment = subcomment;
	}

	public users getUsersubcomment() {
		return usersubcomment;
	}

	public void setUsersubcomment(users usersubcomment) {
		this.usersubcomment = usersubcomment;
	}

	public comments getComment() {
		return comment;
	}

	public void setComment(comments comment) {
		this.comment = comment;
	}
	
}
