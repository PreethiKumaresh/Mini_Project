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
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

/**
 *
 * @author Dell
 */
@Stateless
public class session_placement implements session_placementLocal {

    @PersistenceContext(unitName = "Student_Management-ejbPU")
    private EntityManager em;

    @Override
    public void persist(Object object) {
        em.persist(object);
    }
    
    @Override
    public void insert_login(String id,String password){
        login l=new login();
        l.setId(id);
        l.setPassword(password);
        em.persist(l);        
    }
    
    @Override
    public login findByID(String id){
        login l = em.find(login.class, id);
        return l;
    }
    
    @Override
    public void insert_student(String id,String name,String dob,Long mobno,String address,String dept,String degree,Long percent){
        student s=new student();
        s.setId(id);
        s.setName(name);
        s.setDob(dob);
        s.setMobno(mobno);
        s.setAddress(address);
        s.setDept(dept);
        s.setDegree(degree);
        s.setPercentage(percent);
        em.persist(s);
    }
    
    @Override
    public void update_student(student detachedsub){
        student s=em.merge(detachedsub);
    }
    
    @Override
    public student find_student(String id){
        student s = em.find(student.class, id);
        return s;
    }
    
    @Override
     public company find_company(String cname){
        company c = em.find(company.class, cname);
        return c;
    }
    
    @Override
    public void insert_company(String name,String mailid,String address,Long mobno,String post,Long pay,Long cutoff,Long avai_pos,String app_final_date){
        company c=new company();
        c.setId(name);
        c.setMailid(mailid);
        c.setAddress(address);
        c.setMobno(mobno);
        c.setPost(post);
        c.setPay(pay);
        c.setCutoff(cutoff);
        c.setAvai_position(avai_pos);
        c.setApp_finaldate(app_final_date);
        em.persist(c);
    }
    
    @Override
    public List<student> findAllStudents() {
    TypedQuery<student> query = em.createQuery("SELECT e FROM student e",student.class);
    return query.getResultList();
    }
    
    @Override
    public List<company> findAllCompanies() {
    TypedQuery<company> query = em.createQuery("SELECT e FROM company e",company.class);
    return query.getResultList();
  }
    
    @Override
   public List<jobapplied> findAllJobApplies() {
    TypedQuery<jobapplied> query = em.createQuery("SELECT e FROM jobapplied e",jobapplied.class);
    return query.getResultList();
  } 
    
    @Override
     public company delete_company(String id){
        company s = em.find(company.class, id);
        if(s==null)
        {
            return null;
        }
        else
        {
            em.remove(s);
        }
        return s;
    }
    
    @Override
    public void insert_jobapplied(String sid,String cid){
        jobapplied j=new jobapplied();
        j.setStudentid(sid);
        j.setCompanyid(cid);
        em.persist(j);
    }
    
    @Override
    public List<jobapplied> findStudentApplied(String studentid){
        List results = em.createQuery("SELECT a FROM jobapplied a where a.studentid = :studentid")
                        .setParameter("studentid", studentid).getResultList();
        return results;
    }
}
