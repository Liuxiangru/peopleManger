import org.junit.Test;
import review.dao.PeopleDaoImpl;
import review.entity.People;

import java.util.ArrayList;

/**
 * Created by liuxiangru on 17-2-2.
 */
public class test {

    @Test
    public void testAddPeopleImpl(){
        PeopleDaoImpl p = new PeopleDaoImpl();
        People pt = new People();
        pt.setName("zhangsan");
        pt.setSex("nan");
        pt.setAge(18);
        p.addPeople(pt);

    }
    @Test
    public void testQueryById(){
        PeopleDaoImpl p = new PeopleDaoImpl();
        People ps= p.queryPeopleByPid(1);
        System.out.println("ptname"+ps.getAge()+"s"+ps.getName());
    }
}
