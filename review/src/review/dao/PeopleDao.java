package review.dao;

import review.entity.People;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by 90860 on 2017/1/30.
 */
public interface PeopleDao {
    //查询所有
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
