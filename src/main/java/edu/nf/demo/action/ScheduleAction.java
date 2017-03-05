package edu.nf.demo.action;

import com.opensymphony.xwork2.ActionSupport;
import edu.nf.demo.model.Phone;
import edu.nf.demo.model.Schedule;
import edu.nf.demo.service.ScheduleService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Scope("prototype")
@Controller("scheduleAction")
public class ScheduleAction extends ActionSupport {

    private String phoneName;

    private Date buyTime;

    private Schedule schedule;

    private List<Phone> phones;


    @Resource private ScheduleService scheduleService;


    public String show() {
        phones = scheduleService.getPhones();
        return SUCCESS;
    }


    public String edit() {
        try {
            phoneName = new String(phoneName.getBytes("iso-8859-1"), "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }

        return SUCCESS;
    }


    public String save() {
        try {
            schedule.setBuyDate(buyTime);
            scheduleService.doSchedule(schedule);
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }

        return SUCCESS;
    }


    public String getPhoneName() {
        return phoneName;
    }

    public void setPhoneName(String phoneName) {
        this.phoneName = phoneName;
    }

    public Date getBuyTime() {
        return buyTime;
    }

    public void setBuyTime(Date buyTime) {
        this.buyTime = buyTime;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }

    public List<Phone> getPhones() {
        return phones;
    }

    public void setPhones(List<Phone> phones) {
        this.phones = phones;
    }
}
