package pojo;

import DAO.DAOCustomer;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;

@ManagedBean
public class Customer implements java.io.Serializable {

    public String save_user() {
        DAOCustomer add = new DAOCustomer();
        add.addCustomer(this);
        return "PaymentMessage.xhtml";
    }

    public List<Customer> getAllRecords() {
        DAOCustomer usr = new DAOCustomer();
        List<Customer> lUsr = usr.retrieveCustomer();
        return lUsr;
    }

    public String getById() {
        String id_customer = idCustomer.toString();
        DAOCustomer usr = new DAOCustomer();
        List<Customer> lUsr = usr.getbyID(id_customer);
        nama = lUsr.get(0).nama;
        email = lUsr.get(0).email;
        telp = lUsr.get(0).telp;
        ktp = lUsr.get(0).ktp;
        pembayaran = lUsr.get(0).pembayaran;
        return "PaymentHistory.xhtml";
    }

    public String edit() {
        DAOCustomer usr = new DAOCustomer();
        usr.editCustomer(this);
        nama = "";
        email = "";
        telp = "";
        ktp = "";
        pembayaran = "";
        FacesMessage facesMessage = new FacesMessage(FacesMessage.SEVERITY_INFO, "Berhasil Update Data", null);
        return "AdminMainMenu.xhtml";
    }

    public String delete() {
        //String id_user = idUser.toString();
        DAOCustomer usr = new DAOCustomer();
        usr.deleteCustomer(idCustomer);
        nama = "";
        email = "";
        telp = "";
        ktp = "";
        pembayaran = "";
        return "AdminMainMenu.xhtml";
    }

    private Integer idCustomer;
    private String nama;
    private String email;
    private String ktp;
    private String telp;
    private String pembayaran;

    public Customer() {
    }

    public Customer(String nama, String email, String ktp, String telp, String pembayaran) {
        this.nama = nama;
        this.email = email;
        this.ktp = ktp;
        this.telp = telp;
        this.pembayaran = pembayaran;
    }

    public Integer getIdCustomer() {
        return this.idCustomer;
    }

    public void setIdCustomer(Integer idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getNama() {
        return this.nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getKtp() {
        return this.ktp;
    }

    public void setKtp(String ktp) {
        this.ktp = ktp;
    }

    public String getTelp() {
        return this.telp;
    }

    public void setTelp(String telp) {
        this.telp = telp;
    }

    public String getPembayaran() {
        return this.pembayaran;
    }

    public void setPembayaran(String pembayaran) {
        this.pembayaran = pembayaran;
    }

}
