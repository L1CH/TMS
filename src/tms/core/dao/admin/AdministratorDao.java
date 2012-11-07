package tms.core.dao.admin;

import tms.base.dao.BaseDao;
import tms.core.model.admin.Admin;

public interface AdministratorDao extends BaseDao<Admin, Long> {
	Admin findByLoginName(String loginName);
}
