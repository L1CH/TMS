package tms.core.service.teacher.impl;

import tms.base.service.BaseServiceImpl;
import tms.core.dao.student.StudentDao;
import tms.core.dao.teacher.PingyueRecordDao;
import tms.core.dao.teacher.TeacherDao;
import tms.core.model.student.Student;
import tms.core.model.teacher.PingyueRecord;
import tms.core.model.teacher.Teacher;
import tms.core.service.teacher.PingyueService;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import com.google.common.collect.Lists;

@Service
@Transactional(readOnly = true)
public class PingyueServiceImpl extends BaseServiceImpl implements PingyueService {

	@Resource
	private TeacherDao teacherDao;

	@Resource
	private StudentDao studentDao;

	@Resource
	private PingyueRecordDao pingyueRecordDao;

	@Override
	public List<Teacher> getStudentsPingyueTeachers(Collection<Student> students) {
		// TODO 缺少实现
		return null;
	}

	@Override
	@Transactional(readOnly = false)
	public List<Student> getStudents(String teacherLoginName) {
		List<Student> _students = Lists.newArrayList();
		Teacher _t = teacherDao.findByLoginName(teacherLoginName);
		List<PingyueRecord> _pys = pingyueRecordDao.findByTeacherId(_t.getId());
		Iterator<PingyueRecord> it = _pys.iterator();
		while (it.hasNext()) {
			PingyueRecord _py = it.next();
			Student _s = studentDao.findOne(_py.getStudentId());
			if (_s.getThesisId() == 0L) {
				it.remove();
			} else {
				_students.add(_s);
			}
		}

		Assert.isTrue(_pys.size() == _students.size());
		return _students;
	}
}
