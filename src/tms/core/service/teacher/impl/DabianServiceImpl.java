package tms.core.service.teacher.impl;

import tms.base.service.BaseServiceImpl;
import tms.core.dao.student.StudentDao;
import tms.core.dao.teacher.DabianRecordDao;
import tms.core.dao.teacher.TeacherDao;
import tms.core.model.student.Student;
import tms.core.model.teacher.DabianRecord;
import tms.core.model.teacher.Teacher;
import tms.core.service.teacher.DabianService;

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
public class DabianServiceImpl extends BaseServiceImpl implements DabianService {

	@Resource
	private TeacherDao teacherDao;

	@Resource
	private StudentDao studentDao;

	@Resource
	private DabianRecordDao dabianRecordDao;

	@Override
	public List<Teacher> getStudentsDabianTeachers(Collection<Student> students) {
		// TODO 缺少实现
		return null;
	}

	@Override
	@Transactional(readOnly = false)
	public List<Student> getStudents(String teacherLoginName) {
		List<Student> _students = Lists.newArrayList();
		Teacher _t = teacherDao.findByLoginName(teacherLoginName);
		List<DabianRecord> _dbs = dabianRecordDao.findByTeacherId(_t.getId());
		Iterator<DabianRecord> it = _dbs.iterator();
		while (it.hasNext()) {
			DabianRecord _db = it.next();
			Student _s = studentDao.findOne(_db.getStudentId());
			if (_s.getThesisId() == 0L) {
				it.remove();
			} else {
				_students.add(_s);
			}
		}

		Assert.isTrue(_dbs.size() == _students.size());
		return _students;
	}
}
