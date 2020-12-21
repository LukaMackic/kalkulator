
package model;

import Hibernate.HibernateUtil;
import java.io.Serializable;
import java.util.ArrayList;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

@Entity
@Table(name = "doo")
public class Model_doo implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String sifra;
    private String opis_djelatnosti;
    private String kategorija_komunalne_takse;
    private String iznos_komunalne_takse;
    private int grupa_id;
    private String podrucje;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSifra() {
        return sifra;
    }

    public void setSifra(String sifra) {
        this.sifra = sifra;
    }

    public String getOpis_djelatnosti() {
        return opis_djelatnosti;
    }

    public void setOpis_djelatnosti(String opis_djelatnosti) {
        this.opis_djelatnosti = opis_djelatnosti;
    }

    public String getKategorija_komunalne_takse() {
        return kategorija_komunalne_takse;
    }

    public void setKategorija_komunalne_takse(String kategorija_komunalne_takse) {
        this.kategorija_komunalne_takse = kategorija_komunalne_takse;
    }


    public int getGrupa_id() {
        return grupa_id;
    }

    public void setGrupa_id(int grupa_id) {
        this.grupa_id = grupa_id;
    }

    public String getPodrucje() {
        return podrucje;
    }

    public void setPodrucje(String podrucje) {
        this.podrucje = podrucje;
    }

    public String getIznos_komunalne_takse() {
        return iznos_komunalne_takse;
    }

    public void setIznos_komunalne_takse(String iznos_komunalne_takse) {
        this.iznos_komunalne_takse = iznos_komunalne_takse;
    }
    

    
    
    public void createDOO() {
        Session sesija = HibernateUtil.createSessionFactory().openSession();

       Model_doo doo = new Model_doo();

        Transaction tx = null;

       
          if((Integer)grupa_id != null)  doo.setGrupa_id(grupa_id);
          if(iznos_komunalne_takse !=null)   doo.setIznos_komunalne_takse(iznos_komunalne_takse);
            doo.setKategorija_komunalne_takse(kategorija_komunalne_takse);
            doo.setOpis_djelatnosti(opis_djelatnosti);
            doo.setPodrucje(podrucje);
            doo.setSifra(sifra);
           
           

            try {
                tx = sesija.beginTransaction();

                sesija.save(doo);
            
                tx.commit();

            } catch (Exception ex) {
                System.out.println(ex);
            } finally {

                sesija.close();

            }

        }
     public static ArrayList<Model_doo> selectSifraDOO(String sifra) {
      
        Session sesija = HibernateUtil.createSessionFactory().openSession();
        ArrayList<Model_doo> doo_collection = new ArrayList();
        Query query = sesija.createQuery("from Model_doo as doo where doo.sifra ='"+sifra+"'");
        doo_collection = (ArrayList<Model_doo>) query.list();
       
        return doo_collection;

    }
      public static ArrayList<Model_doo> selectOpisDOO(String opis) {
      
        Session sesija = HibernateUtil.createSessionFactory().openSession();
        ArrayList<Model_doo> doo_collection = new ArrayList();
        Query query = sesija.createQuery("from Model_doo as doo where doo.opis like '%"+opis+"%' ");
        doo_collection = (ArrayList<Model_doo>) query.list();
       
        return doo_collection;

    }
      public static ArrayList<Model_doo> selectPodrucjeDOO(String podrucje) {
      
        Session sesija = HibernateUtil.createSessionFactory().openSession();
        ArrayList<Model_doo> doo_collection = new ArrayList();
        Query query = sesija.createQuery("from Model_doo as doo where doo.podrucje ='"+podrucje+"'");
        doo_collection = (ArrayList<Model_doo>) query.list();
       
        return doo_collection;

    }
    
    
}
