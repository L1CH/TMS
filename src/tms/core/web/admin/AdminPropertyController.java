package tms.core.web.admin;

import tms.base.web.BaseController;
import tms.core.model.admin.SysPermission;
import tms.core.model.admin.SysProperty;
import tms.core.service.admin.SysPermissionService;
import tms.core.service.admin.SysPropertyService;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/sysProperty")
public class AdminPropertyController extends BaseController {

	@Resource
	private SysPropertyService sysPropertyService;

	@Resource
	private SysPermissionService sysPermissionService;

	@RequestMapping(value = { "" })
	public String show(Model model) {
		logger.debug("GET-show");

		List<SysProperty> sysProperties = sysPropertyService.getAllSysProperties();
		model.addAttribute("sysProperties", sysProperties);

		List<SysPermission> sysPermissions = sysPermissionService.getAllSysPermissions();
		model.addAttribute("sysPermissions", sysPermissions);

		return "admin/sysProperty";
	}

	@RequestMapping(value = { "/updateSysProperty" }, method = RequestMethod.POST)
	public String saveSysProperty(SysProperty sysProperty, Model model) {
		logger.debug("获取更新的SysProperty: {}", sysProperty);

		boolean success = false;
		if (sysPropertyService.saveSysProperty(sysProperty) != null) {
			success = true;
		}
		model.addAttribute("success", success);

		return "forward:/admin/sysProperty";
	}

	@RequestMapping(value = { "/updateSysPermission" }, method = RequestMethod.POST)
	public String saveSysPermission(SysPermission sysPermission, Model model) {
		logger.debug("获取更新的SysPermission: {}", sysPermission);

		boolean success = false;
		if (sysPermissionService.saveSysPermission(sysPermission) != null) {
			success = true;
		}
		model.addAttribute("success", success);

		return "forward:/admin/sysProperty";
	}
}