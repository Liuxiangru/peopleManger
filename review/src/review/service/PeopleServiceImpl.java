package review.service;

import review.dao.PeopleDao;
import review.dao.PeopleDaoImpl;
import review.entity.People;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by 90860 on 2017/2/8 0008.
 */
public class PeopleServiceImpl implements PeopleService {

    private People p;
    private boolean b ;
    private ArrayList<People> peopleAll;
    @Override
    public ArrayList<People> queryAllPeople() {
        PeopleDao pdi = new PeopleDaoImpl();
        peopleAll= pdi.queryAllPeople();
        return peopleAll;
    }

    @Override
    public People queryPeopleByPid(int pid) {
        PeopleDao pdi = new PeopleDaoImpl();
        p = pdi.queryPeopleByPid(pid);
        return p;
    }

    @Override
    public boolean addPeople(People p) throws SQLException {
        PeopleDao pdi = new PeopleDaoImpl();
        b= pdi.addPeople(p);
        return b;
    }

    @Override
    public boolean updatePeople(People p) {
        PeopleDao pdi = new PeopleDaoImpl();
        b= pdi.updatePeople(p);
        return b;
    }

    @Override
    public boolean deletePeopleById(int p) {
        PeopleDao pdi = new PeopleDaoImpl();
        b = pdi.deletePeopleById(p);
        return b;
    }
}
