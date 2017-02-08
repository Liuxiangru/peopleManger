package review.service;

import review.entity.People;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by 90860 on 2017/2/8 0008.
 */
public interface PeopleService {
    public ArrayList<People> queryAllPeople();
    //按照id查询
    public People queryPeopleByPid(int pid);

    //增加一个人
    public boolean addPeople(People p) throws SQLException;

    //修改一个人
    public boolean updatePeople(People p);

    //删除一个人
    boolean deletePeopleById(int p);
}
