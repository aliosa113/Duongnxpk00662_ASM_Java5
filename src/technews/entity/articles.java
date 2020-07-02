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
public class articles {

	@Id
	@GeneratedValue
	private Integer idarticle;
	private String image;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
	private Date date;
	private String title;
	private String subtitle;
	private String contents;
	private String source;
	private Integer views;

	@ManyToOne
	@JoinColumn(name = "iduser")
	private users userarticle;

	@ManyToOne
	@JoinColumn(name = "idtype")
	private articletypes articletype;

	@OneToMany(mappedBy = "article", fetch = FetchType.EAGER)
	private Collection<comments> comment;

	public articles() {
		super();
	}
	
	public articles(String image, Date date, String title, String subtitle, String contents, String source,
			Integer views, users userarticle, articletypes articletype) {
		super();
		this.image = image;
		this.date = date;
		this.title = title;
		this.subtitle = subtitle;
		this.contents = contents;
		this.source = source;
		this.views = views;
		this.userarticle = userarticle;
		this.articletype = articletype;
	}

	public articles(String image, Date date, String title, String subtitle, String contents, String source,
			Integer views, users userarticle, articletypes articletype, Collection<comments> comment) {
		super();
		this.image = image;
		this.date = date;
		this.title = title;
		this.subtitle = subtitle;
		this.contents = contents;
		this.source = source;
		this.views = views;
		this.userarticle = userarticle;
		this.articletype = articletype;
		this.comment = comment;
	}

	public articles(Integer idarticle, String image, Date date, String title, String subtitle, String contents,
			String source, Integer views, users userarticle, articletypes articletype, Collection<comments> comment) {
		super();
		this.idarticle = idarticle;
		this.image = image;
		this.date = date;
		this.title = title;
		this.subtitle = subtitle;
		this.contents = contents;
		this.source = source;
		this.views = views;
		this.userarticle = userarticle;
		this.articletype = articletype;
		this.comment = comment;
	}

	public Integer getIdarticle() {
		return idarticle;
	}

	public void setIdarticle(Integer idarticle) {
		this.idarticle = idarticle;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public Integer getViews() {
		return views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

	public users getUserarticle() {
		return userarticle;
	}

	public void setUserarticle(users userarticle) {
		this.userarticle = userarticle;
	}

	public articletypes getArticletype() {
		return articletype;
	}

	public void setArticletype(articletypes articletype) {
		this.articletype = articletype;
	}

	public Collection<comments> getComment() {
		return comment;
	}

	public void setComment(Collection<comments> comment) {
		this.comment = comment;
	}
	
}
