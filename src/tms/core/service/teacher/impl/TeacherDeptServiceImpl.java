package tms.core.service.teacher.impl;

import tms.base.service.BaseServiceImpl;
import tms.core.dao.teacher.TeacherDeptDao;
import tms.core.model.teacher.TeacherDept;
import tms.core.service.teacher.TeacherDeptService;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class TeacherDeptServiceImpl extends BaseServiceImpl implements TeacherDeptService {

	@Resource
	private TeacherDeptDao teacherDeptDao;

	@Override
	public List<TeacherDept> getTeacherDepts() {
		return teacherDeptDao.findAll();
	}

	@Override
	@Transactional(readOnly = false)
	public TeacherDept addTeacherDept(TeacherDept teacherDept) {
		return teacherDeptDao.save(teacherDept);
	}

	@Override
	@Transactional(readOnly = false)
	public TeacherDept delTeacherDept(Long teacherDeptId) {
		TeacherDept teacherDept = teacherDeptDao.findOne(teacherDeptId);
		teacherDeptDao.delete(teacherDept);

		return teacherDept;
	}
}
