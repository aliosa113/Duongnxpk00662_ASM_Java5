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
public class userroles {

	@Id
	@GeneratedValue
	private Integer idrole;
	private String role;
	private String notes;

	@OneToMany(mappedBy = "userrole", fetch = FetchType.EAGER)
	private Collection<users> users;

	public userroles() {
		super();
	}

	public userroles(String role, String notes, Collection<users> user) {
		super();
		this.role = role;
		this.notes = notes;
		this.users = user;
	}

	public userroles(Integer idrole, String role, String notes, Collection<users> user) {
		super();
		this.idrole = idrole;
		this.role = role;
		this.notes = notes;
		this.users = user;
	}

	public Integer getIdrole() {
		return idrole;
	}

	public void setIdrole(Integer idrole) {
		this.idrole = idrole;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Collection<users> getUser() {
		return users;
	}

	public void setUser(Collection<users> user) {
		this.users = user;
	}
	
}
