package tms.core.dao.teacher;

import tms.base.dao.BaseDao;
import tms.core.model.teacher.Teacher;

public interface TeacherDao extends BaseDao<Teacher, Long> {
	Teacher findByLoginName(String loginName);
}
