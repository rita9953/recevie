package com.submit.dao;

import com.submit.pojo.student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.Map;

@Mapper
public interface studentMapper {
    int deleteByPrimaryKey(String studentno);

    int insert(student record);

    int insertSelective(student record);

    student selectByPrimaryKey(String studentno);
    @Select("select * from student")
    List<student>getall();

    int updateByPrimaryKeySelective(student record);

    int updateByPrimaryKey(student record);

    //修改密码
    @Update("update student set password=#{password} where studentno=#{studentno}")
    boolean updatepassword(@Param("studentno") String studentno, @Param("password") String password);

    @Select("SELECT b.studentno  studentno ,a.`name`,a.pinyin,a.password,b.no,b.ID from student a,studentclass b " +
            "WHERE a.studentno=b.studentno " +
            "and b.classID=#{classid} ")
    List<Map> getstudentbyclassid(int classid);

    @Select("select * from student where studentno like CONCAT('%',#{studentid},'%') and name like CONCAT('%',#{name},'%')")
    List<student> getallstudent(@Param("studentid")String studentid,@Param("name")String name);
}/**/