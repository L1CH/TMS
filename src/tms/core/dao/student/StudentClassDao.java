package tms.core.dao.student;

import tms.base.dao.BaseDao;
import tms.core.model.student.StudentClass;

public interface StudentClassDao extends BaseDao<StudentClass, Long> {
	StudentClass findByName(String name);
}
