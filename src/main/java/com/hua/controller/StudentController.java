package com.hua.controller;

import com.hua.domain.Student;
import com.hua.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    private StudentService service;
    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student){
        String tips = "注册失败";
        ModelAndView mv = new ModelAndView();
        int num = service.addStudent(student);
        if(num >0 ){
            tips = "学生【" +student.getName()+"】注册成功";
        }
        mv.addObject("tips",tips);
        mv.setViewName("show");
        return mv;
    }
    @RequestMapping("/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudent(){
        return service.findStudents();
    }
}
