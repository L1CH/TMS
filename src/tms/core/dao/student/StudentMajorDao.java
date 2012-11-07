package tms.core.dao.student;

import tms.base.dao.BaseDao;
import tms.core.model.student.StudentMajor;

public interface StudentMajorDao extends BaseDao<StudentMajor, Long> {
	StudentMajor findByName(String Name);
}
