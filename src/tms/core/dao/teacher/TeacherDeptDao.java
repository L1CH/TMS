package tms.core.dao.teacher;

import tms.base.dao.BaseDao;
import tms.core.model.teacher.TeacherDept;

public interface TeacherDeptDao extends BaseDao<TeacherDept, Long> {
	TeacherDept findByName(String name);
}
