/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ss;

import ee.NewEntity;
import ee.company;
import ee.jobapplied;
import ee.login;
import ee.student;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Dell
 */
@Local
public interface session_placementLocal {

    public void persist(Object object);
    public void insert_login(String id, String password);
    public login findByID(String id);
    public void insert_student(String id, String name, String dob, Long mobno, String address, String dept, String degree, Long percent);
    public void update_student(student detachedsub);
    public student find_student(String id);
    public void insert_company(String name, String mailid, String address, Long mobno, String post, Long pay, Long cutoff, Long avai_pos, String app_final_date);
    public List<student> findAllStudents();
    public List<company> findAllCompanies();
    public company delete_company(String id);
    public void insert_jobapplied(String sid, String cid);
    public List<jobapplied> findAllJobApplies();
    public List<jobapplied> findStudentApplied(String sid);
    public company find_company(String cname);
    
}
