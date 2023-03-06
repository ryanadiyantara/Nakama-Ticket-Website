package pojo;

import DAO.DAOTiket;
import java.util.Date;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;

@ManagedBean
public class Tiket implements java.io.Serializable {

    private Integer idTiket;
    private String judul;
    private String deskripsi;
    private String tempat;
    private String tanggal;
    private String harga;
    private String thumbnail;

    public List<Tiket> getAllRecords() {
        DAOTiket usr = new DAOTiket();
        List<Tiket> lUsr = usr.retrieveAdmin();
        return lUsr;
    }

    public String save_user() {
        DAOTiket add = new DAOTiket();
        add.addAdmin(this);
        return "AdminMainMenu.xhtml";
    }

    public String getById() {
        String id_ticket = idTiket.toString();
        DAOTiket usr = new DAOTiket();
        List<Tiket> lUsr = usr.getbyID(id_ticket);
        judul = lUsr.get(0).judul;
        tempat = lUsr.get(0).tempat;
        tanggal = lUsr.get(0).tanggal;
        harga = lUsr.get(0).harga;
        deskripsi = lUsr.get(0).deskripsi;
        thumbnail = lUsr.get(0).thumbnail;
        return "AdminEdit.xhtml";
    }

    public String edit() {
        DAOTiket usr = new DAOTiket();
        usr.editAdmin(this);
        judul = "";
        tempat = "";
        tanggal = "";
        harga = "";
        deskripsi = "";
        thumbnail = "";
        FacesMessage facesMessage = new FacesMessage(FacesMessage.SEVERITY_INFO, "Berhasil Update Data", null);
        return "AdminMainMenu.xhtml";
    }

    public String delete() {
        //String id_user = idUser.toString();
        DAOTiket usr = new DAOTiket();
        usr.deleteAdmin(idTiket);
        judul = "";
        tempat = "";
        tanggal = "";
        harga = "";
        deskripsi = "";
        thumbnail = "";
        return "AdminMainMenu.xhtml";
    }

    public Tiket() {
    }

    public Tiket(String judul, String deskripsi, String tempat, String tanggal, String harga, String thumbnail) {
        this.judul = judul;
        this.deskripsi = deskripsi;
        this.tempat = tempat;
        this.tanggal = tanggal;
        this.harga = harga;
        this.thumbnail = thumbnail;
    }

    public Integer getIdTiket() {
        return this.idTiket;
    }

    public void setIdTiket(Integer idTiket) {
        this.idTiket = idTiket;
    }

    public String getJudul() {
        return this.judul;
    }

    public void setJudul(String judul) {
        this.judul = judul;
    }

    public String getDeskripsi() {
        return this.deskripsi;
    }

    public void setDeskripsi(String deskripsi) {
        this.deskripsi = deskripsi;
    }

    public String getTempat() {
        return this.tempat;
    }

    public void setTempat(String tempat) {
        this.tempat = tempat;
    }

    public String getTanggal() {
        return this.tanggal;
    }

    public void setTanggal(String tanggal) {
        this.tanggal = tanggal;
    }

    public String getHarga() {
        return this.harga;
    }

    public void setHarga(String harga) {
        this.harga = harga;
    }

    public String getThumbnail() {
        return this.thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

}
