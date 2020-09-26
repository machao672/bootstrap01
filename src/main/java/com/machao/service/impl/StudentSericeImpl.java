package com.machao.service.impl;


import com.github.pagehelper.PageHelper;
import com.machao.dao.StudentDao;
import com.machao.service.StudentService;
import com.machao.vo.PageVo;
import com.machao.vo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentSericeImpl implements StudentService {
    @Autowired
    StudentDao studentDao;

    @Override
    public Student loginStu(Student student) {
        Student student1 = studentDao.loginStu(student);
        return student1;
    }

    @Override
    public List<Student> queryAll(Student student, int page, int rows) {
        PageHelper.startPage(page,rows);

        return studentDao.queryAll(student);
    }

    @Override
    public PageVo<Student> queryAll2(Student student, int page, int rows) {
        PageVo<Student> pageVo=new PageVo<>();

        PageHelper.startPage(page,rows);

        pageVo.setRows(studentDao.queryAll(student));

        pageVo.setTotal(studentDao.puerycountAll(student));

        return pageVo;
    }

    @Override
    public List<Student> queryStudent() {
        return studentDao.queryStudent();
    }


}
