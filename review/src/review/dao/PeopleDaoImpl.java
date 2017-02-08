package review.dao;

import review.entity.People;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by 90860 on 2017/1/30.
 */
public class PeopleDaoImpl implements PeopleDao {
    ArrayList<People> listPeople= new ArrayList<People>();
    People p = new People();
    /**
     * 声明 连接 预处理声明  结果集 sql
     */
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql =null;
    @Override
    public ArrayList<People> queryAllPeople() {
        try {
            sql="select * from people";
            conn =dataBaseUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()){
                People p = new People();
                p.setPid(rs.getInt("pid"));
                p.setName(rs.getString("name"));
                p.setSex(rs.getString("sex"));
                p.setAge(rs.getInt("age"));
                listPeople.add(p);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                conn.close();
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return listPeople;
    }

    @Override
    public People queryPeopleByPid(int id) {
        try {
            sql="select * from people where pid=?";
            conn =dataBaseUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,id);
            rs = pstmt.executeQuery();

            while (rs.next()){
                System.out.println(rs.getInt("pid"));
                p.setPid(rs.getInt("pid"));
                p.setName(rs.getString("name"));
                p.setSex(rs.getString("sex"));
                p.setAge(rs.getInt("age"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                conn.close();
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return p;
    }

    @Override
    public boolean addPeople(People p) {
        int rs = 0;
        try {
            sql="insert into  people (name,sex,age)  values(?,?,?)";
            conn =dataBaseUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,p.getName());
            pstmt.setString(2,p.getSex());
            pstmt.setInt(3,p.getAge());
            rs = pstmt.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                conn.close();
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rs == 1){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean updatePeople(People p) {
        int rs = 0;
        try {
            sql="update  people set name=?,sex=?,age=? where pid=?";
            conn =dataBaseUtil.getConnection();
            pstmt = conn.prepareStatement(sql);

            System.out.println("n"+p.getName()+"s"+p.getSex()+"a"+p.getAge());
            pstmt.setString(1,p.getName());
            pstmt.setString(2,p.getSex());
            pstmt.setInt(3,p.getAge());
            pstmt.setInt(4,p.getPid());
            rs = pstmt.executeUpdate();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                conn.close();
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (rs == 1){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean deletePeopleById(int p) {
        int rs = 0;
        try {
            sql="delete from people where pid=?";
            conn = dataBaseUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,p);
            rs =pstmt.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                conn.close();
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rs==1) {
            return true;
        } else {
            return false ;
        }
    }
}
