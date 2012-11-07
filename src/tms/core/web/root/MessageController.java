package tms.core.web.root;

import tms.base.web.BaseController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageController extends BaseController {

	@RequestMapping("/message")
	public String message(Model model) {
		return "error/message";
	}
}
