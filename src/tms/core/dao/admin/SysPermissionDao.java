package tms.core.dao.admin;

import tms.base.dao.BaseDao;
import tms.core.model.admin.SysPermission;

import java.util.List;

public interface SysPermissionDao extends BaseDao<SysPermission, Long> {
	public SysPermission findByPropKey(String propKey);

	public List<SysPermission> findByPropKeyLike(String propKey);
}
