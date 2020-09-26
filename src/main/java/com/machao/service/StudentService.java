package com.machao.service;

import com.machao.vo.PageVo;
import com.machao.vo.Student;

import java.util.List;

public interface StudentService {
    //登录
    Student loginStu(Student student);

    //分页
    List<Student> queryAll(Student student,int page,int rows);

    PageVo<Student> queryAll2(Student student,int page,int rows);

    List<Student> queryStudent();

}
