/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ee;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Dell
 */
@Entity
public class company implements Serializable {

    
    @Id
    
    private String id;
    private String mailid;
    private String address;
    private Long mobno;
    private String post;
    private Long pay;
    private Long cutoff;
    private Long avai_position;
    private String app_finaldate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMailid() {
        return mailid;
    }

    public void setMailid(String mailid) {
        this.mailid = mailid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Long getMobno() {
        return mobno;
    }

    public void setMobno(Long mobno) {
        this.mobno = mobno;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public Long getPay() {
        return pay;
    }

    public void setPay(Long pay) {
        this.pay = pay;
    }

    public Long getCutoff() {
        return cutoff;
    }

    public void setCutoff(Long cutoff) {
        this.cutoff = cutoff;
    }

    public Long getAvai_position() {
        return avai_position;
    }

    public void setAvai_position(Long avai_position) {
        this.avai_position = avai_position;
    }

    public String getApp_finaldate() {
        return app_finaldate;
    }

    public void setApp_finaldate(String app_finaldate) {
        this.app_finaldate = app_finaldate;
    }
    
    @Override
    public String toString() {
        return "ee.company[ id=" + id + " ]";
    }
    
}
