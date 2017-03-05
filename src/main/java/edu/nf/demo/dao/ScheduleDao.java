package edu.nf.demo.dao;

import edu.nf.demo.model.Schedule;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleDao extends BaseDao {

    public void save(Schedule schedule) {
        getSession().save(schedule);
    }
}
