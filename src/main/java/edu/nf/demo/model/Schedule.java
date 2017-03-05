package edu.nf.demo.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Entity(name = "scheduleinfo")
public class Schedule {

    @Id
    @Column(length = 32)
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid")
    private String sid;

    @Column(nullable = false, length = 20)
    private String productName;

    @Column(nullable = false)
    private Date buyDate;

    @Column(nullable = false, length = 8)
    private String consignee;

    @Column(length = 20)
    private String email;

    @Column(nullable = false, length = 11)
    private String mobile;

    @Column(nullable = false, length = 100)
    private String address;


    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Date getBuyDate() {
        return buyDate;
    }

    public void setBuyDate(Date buyDate) {
        this.buyDate = buyDate;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    @Override
    public String toString() {
        return "Schedule [sid=" + sid + ", productName=" + productName + ", buyDate=" + buyDate + ", consignee="
                + consignee + ", email=" + email + ", mobile=" + mobile + ", address=" + address + "]";
    }


}
