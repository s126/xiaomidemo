package edu.nf.demo.service;

import edu.nf.demo.dao.PhoneDao;
import edu.nf.demo.dao.ScheduleDao;
import edu.nf.demo.model.Phone;
import edu.nf.demo.model.Schedule;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class ScheduleService {
	
	@Resource private ScheduleDao scheduleDao;
	@Resource private PhoneDao phoneDao;

	public List<Phone> getPhones() {
		return phoneDao.listAll();
	}
	
	public void doSchedule(Schedule schedule){
		scheduleDao.save(schedule);
	}
	
}
