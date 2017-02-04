package review.entity;

/**
 * Created by 90860 on 2017/1/23.
 */
public class People {
    private int pid;

    private String name;

    private String sex;

    private int age;

    public People() {
    }

    public People(int pid, String name, String sex, int age) {
        this.pid = pid;
        this.name = name;
        this.sex = sex;
        this.age = age;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "People{" +
                "pid=" + pid +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", age='" + age + '\'' +
                '}';
    }
}
