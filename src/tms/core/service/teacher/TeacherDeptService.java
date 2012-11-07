package tms.core.service.teacher;

import java.util.List;

import tms.base.service.BaseService;
import tms.core.model.teacher.TeacherDept;

public interface TeacherDeptService extends BaseService {
	/**
	 * 获取教师部门列表
	 * @return List<TeacherDept>
	 */
	public List<TeacherDept> getTeacherDepts();

	/**
	 * 添加教师部门信息
	 * @param teacherDept
	 * @return
	 */
	public TeacherDept addTeacherDept(TeacherDept teacherDept);

	/**
	 * 删除教师部门信息
	 * @param teacherDeptId 部门id
	 * @return
	 */
	public TeacherDept delTeacherDept(Long teacherDeptId);
}
