package tms.core.web.student;

import tms.base.web.BaseController;
import tms.core.model.teacher.Thesis;
import tms.core.service.student.StudentService;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student/thesisResult")
public class StudentThesisResultController extends BaseController {

	@Resource
	private StudentService studentService;

	@RequestMapping(value = { "" })
	public String show(Model model) {
		String studentLoginName = SecurityUtils.getSubject().getPrincipal().toString();
		Thesis thesis = studentService.getFinalThesis(studentLoginName);
		model.addAttribute("thesis", thesis);

		return "student/thesisResult";
	}
}
