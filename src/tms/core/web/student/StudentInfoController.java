package tms.core.web.student;

import tms.base.web.BaseController;
import tms.core.model.student.Student;
import tms.core.model.student.StudentClass;
import tms.core.model.student.StudentMajor;
import tms.core.service.student.StudentClassService;
import tms.core.service.student.StudentMajorService;
import tms.core.service.student.StudentService;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/student")
public class StudentInfoController extends BaseController {

	@Resource
	private StudentService studentService;

	@Resource
	private StudentMajorService studentMajorService;

	@Resource
	private StudentClassService studentClassService;

	@RequiresPermissions("student:info:show")
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String showInfo(Model model) {
		logger.debug("GET-showInfo");

		String loginName = SecurityUtils.getSubject().getPrincipal().toString();
		Student student = studentService.getStudentInfo(loginName);
		model.addAttribute("student", student);

		//添加major列表
		List<StudentMajor> majors = studentMajorService.getStudentMajors();
		model.addAttribute("majors", majors);

		//添加class列表
		List<StudentClass> stuClasses = studentClassService.getStudentClasses();
		model.addAttribute("stuClasses", stuClasses);

		return "student/info";
	}

	@RequiresPermissions("student:info:mod")
	@RequestMapping(value = "/info", method = RequestMethod.POST)
	public String modInfo(Student student, Model model) {
		logger.debug("POST-modInfo");

		logger.debug("网页获取信息：{}", student);
		//强制指定用户no.
		String loginName = SecurityUtils.getSubject().getPrincipal().toString();
		student.setLoginName(loginName);

		//保存
		boolean success = false;
		if (studentService.saveStudentInfo(student) != null) {
			success = true;
		}
		model.addAttribute("success", success);

		//添加major列表
		List<StudentMajor> majors = studentMajorService.getStudentMajors();
		model.addAttribute("majors", majors);

		//添加class列表
		List<StudentClass> stuClasses = studentClassService.getStudentClasses();
		model.addAttribute("stuClasses", stuClasses);

		return "student/info";
	}
}
