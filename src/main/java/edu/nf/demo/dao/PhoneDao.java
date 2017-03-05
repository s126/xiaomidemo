package edu.nf.demo.dao;


import edu.nf.demo.model.Phone;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class PhoneDao extends BaseDao {

    public List<Phone> listAll() {
        return getSession().createQuery("from Phone").list();
    }
}
