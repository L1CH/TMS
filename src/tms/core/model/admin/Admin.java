package tms.core.model.admin;

import tms.base.model.IdEntity;
import tms.core.model.generic.User;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "admin")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Admin extends IdEntity implements User {
	private static final long serialVersionUID = 4217558191841990227L;

	private String loginName;//管理员no.
	private String name = "";//管理员name
	private String password = "0";//password
	private String enable = "true";//是否enable

	public Admin() {
		super();
	}

	public Admin(String loginName) {
		super();
		this.loginName = loginName;
	}

	public Admin(String loginName, String name, String password, String enable) {
		super();
		this.loginName = loginName;
		this.name = name;
		this.password = password;
		this.enable = enable;
	}

	@Column(nullable = false, unique = true)
	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	@Column(nullable = false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(nullable = false)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(nullable = false)
	public String getEnable() {
		return enable;
	}

	public void setEnable(String enable) {
		this.enable = enable;
	}
}
