package com.machao.vo;



import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Arrays;
import java.util.Date;

public class Student {
    private int stuid;
    private String username;
    private String password;
    private String stuname;
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    private Date birthday;
    private String sex;
    private int classid;
    private byte[] image;


    public Student() {

    }

    public Student(int stuid, String username, String password, String stuname, Date birthday, String sex, int classid, byte[] image) {

        this.stuid = stuid;
        this.username = username;
        this.password = password;
        this.stuname = stuname;
        this.birthday = birthday;
        this.sex = sex;
        this.classid = classid;
        this.image = image;
    }

    public int getStuid() {
        return stuid;
    }

    public void setStuid(int stuid) {
        this.stuid = stuid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Student{" +
                "stuid=" + stuid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", stuname='" + stuname + '\'' +
                ", birthday=" + birthday +
                ", sex='" + sex + '\'' +
                ", classid=" + classid +
                ", image=" + Arrays.toString(image) +
                '}';
    }
}
