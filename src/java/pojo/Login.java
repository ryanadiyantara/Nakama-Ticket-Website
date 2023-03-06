package pojo;

import DAO.DAOLogin;
import java.util.List;
import javax.faces.bean.ManagedBean;

@ManagedBean
public class Login implements java.io.Serializable {

    private Integer id;
    private String username;
    private String password;

    public String login_user() {
        DAOLogin uDao = new DAOLogin();
        List<Login> us = uDao.getBy(username, password);
        try {
            if (us != null) {
                username = us.get(0).username;
                password = us.get(0).password;
                return "AdminMainMenu.xhtml";
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return "LoginGagal.xhtml";
    }

    public Login() {
    }

    public Login(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
