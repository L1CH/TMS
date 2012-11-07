package tms.core.dao.admin;

import tms.base.dao.BaseDao;
import tms.core.model.admin.SysProperty;

import java.util.List;

public interface SysPropertyDao extends BaseDao<SysProperty, Long> {
	public SysProperty findByPropKey(String propKey);

	public List<SysProperty> findByPropKeyLike(String propKey);
}
