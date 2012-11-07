package tms.core.dao.student;

import tms.base.dao.BaseDao;
import tms.core.model.student.Preview;

import java.util.List;

public interface PreviewDao extends BaseDao<Preview, Long> {

	public List<Preview> findByThesisId(Long thesisId);

	public List<Preview> findByStudentId(Long studentId);

	public Preview findByStudentIdAndThesisId(Long studentId, Long thesisId);

	public List<Preview> findByThesisIdAndSubjectOrder(Long thesisId, int subjectOrder);

	public List<Preview> findByStudentIdAndSubjectOrder(Long studentId, int subjectOrder);
}
