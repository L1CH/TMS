package tms.core.dao.teacher;

import tms.base.dao.BaseDao;
import tms.core.model.teacher.DabianRecord;

import java.util.List;

public interface DabianRecordDao extends BaseDao<DabianRecord, Long> {

	public List<DabianRecord> findByTeacherId(Long teacherId);

	public DabianRecord findByStudentId(Long studentId);
}
