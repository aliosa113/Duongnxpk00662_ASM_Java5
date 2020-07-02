package technews.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class users {

	@Id
	@GeneratedValue
	private Integer iduser;
	private String fullname;
	private String email;
	private String username;
	private String password;
	private String avatar;
	@ManyToOne
	@JoinColumn(name = "idrole")
	private userroles userrole;
	
	@OneToMany(mappedBy = "userarticle", fetch = FetchType.EAGER)
	private Collection<articles> article;
	
	@OneToMany(mappedBy = "usercomment", fetch = FetchType.EAGER)
	private Collection<comments> comment;
	
	@OneToMany(mappedBy = "usersubcomment", fetch = FetchType.EAGER)
	private Collection<subcomments> subcomment;

	public users() {
		super();
	}
	
	public users(String fullname, String email, String username, String password, String avatar, userroles userrole) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.username = username;
		this.password = password;
		this.avatar = avatar;
		this.userrole = userrole;
	}

	public users(String fullname, String email, String username, String password, String avatar, userroles userrole,
			Collection<articles> article, Collection<comments> comment, Collection<subcomments> subcomment) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.username = username;
		this.password = password;
		this.avatar = avatar;
		this.userrole = userrole;
		this.article = article;
		this.comment = comment;
		this.subcomment = subcomment;
	}

	public users(Integer iduser, String fullname, String email, String username, String password, String avatar,
			userroles userrole, Collection<articles> article, Collection<comments> comment,
			Collection<subcomments> subcomment) {
		super();
		this.iduser = iduser;
		this.fullname = fullname;
		this.email = email;
		this.username = username;
		this.password = password;
		this.avatar = avatar;
		this.userrole = userrole;
		this.article = article;
		this.comment = comment;
		this.subcomment = subcomment;
	}

	public Integer getIduser() {
		return iduser;
	}

	public void setIduser(Integer iduser) {
		this.iduser = iduser;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public userroles getUserrole() {
		return userrole;
	}

	public void setUserrole(userroles userrole) {
		this.userrole = userrole;
	}

	public Collection<articles> getArticle() {
		return article;
	}

	public void setArticle(Collection<articles> article) {
		this.article = article;
	}

	public Collection<comments> getComment() {
		return comment;
	}

	public void setComment(Collection<comments> comment) {
		this.comment = comment;
	}

	public Collection<subcomments> getSubcomment() {
		return subcomment;
	}

	public void setSubcomment(Collection<subcomments> subcomment) {
		this.subcomment = subcomment;
	}
	
}
