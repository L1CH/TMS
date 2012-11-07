package tms.core.dao.teacher;

import tms.base.dao.BaseDao;
import tms.core.model.teacher.PingyueRecord;

import java.util.List;

public interface PingyueRecordDao extends BaseDao<PingyueRecord, Long> {

	public List<PingyueRecord> findByTeacherId(Long teacherId);

	public PingyueRecord findByStudentId(Long studentId);

}
