package tms.core.service.admin;

import tms.base.service.BaseService;
import tms.core.model.admin.SysProperty;

import java.util.List;

public interface SysPropertyService extends BaseService {

	/**
	 * 获取所有系统属性
	 * @return List<SysProperty>
	 */
	public List<SysProperty> getAllSysProperties();

	/**
	 * 保存系统属性
	 * @param sysProperty
	 * @return SysProperty or null
	 */
	public SysProperty saveSysProperty(SysProperty sysProperty);
}
