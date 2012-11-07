package tms.core.service.admin.impl;

import tms.base.service.BaseServiceImpl;
import tms.core.dao.admin.SysPropertyDao;
import tms.core.model.admin.SysProperty;
import tms.core.service.admin.SysPropertyService;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import com.google.common.collect.Lists;

@Service
@Transactional(readOnly = true)
public class SysPropertyServiceImpl extends BaseServiceImpl implements SysPropertyService {

	@Resource
	private SysPropertyDao sysPropertyDao;

	@Override
	public List<SysProperty> getAllSysProperties() {
		List<SysProperty> sysProperties = Lists.newArrayList(sysPropertyDao.findAll());
		logger.debug("系统属性数量：{}", sysProperties.size());

		return sysProperties;
	}

	@Override
	@Transactional(readOnly = false)
	public SysProperty saveSysProperty(SysProperty sysProperty) {
		Assert.notNull(sysProperty);
		SysProperty s = sysProperty;

		Long id = s.getId();
		SysProperty _s = sysPropertyDao.findOne(id);
		_s.setPropVal(s.getPropVal());
		logger.debug("修改系统属性：{}", _s);

		return sysPropertyDao.save(_s);
	}
}
