package tms.core.web.admin;

import tms.base.web.BaseController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/")
public class AdminIndexController extends BaseController {

	@RequestMapping(value={"","index"})
	public String index(ModelMap modelMap) {
		return "admin/index";
	}
}
