package com.machao.dao;

import com.machao.vo.Student;

import java.util.List;

public interface StudentDao {
    //登录
    Student loginStu(Student student);

    List<Student> queryStudent();

    //分页
    List<Student> queryAll(Student student);

    int puerycountAll(Student student);
}
