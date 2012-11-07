package tms.core.dao.student;

import tms.base.dao.BaseDao;
import tms.core.model.student.Student;

public interface StudentDao extends BaseDao<Student, Long> {
	Student findByLoginName(String loginName);

	Student findByThesisId(Long thesisId);
}
