
package model;

import Hibernate.HibernateUtil;
import java.io.Serializable;
import java.util.ArrayList;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import org.hibernate.Session;
import org.hibernate.Transaction;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.HibernateException;
import org.hibernate.Query;


@Entity
@Table(name = "sp")
public class Model_sp implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String sifra;
    private String opis;
    private String kategorija_komunalne_takse;
    private String iznos_komunalne_takse;
    private String iznos_republicke_takse;
    private String podrucje;

    public String getSifra() {
        return sifra;
    }

    public void setSifra(String sifra) {
        this.sifra = sifra;
    }
   
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getKategorija_komunalne_takse() {
        return kategorija_komunalne_takse;
    }

    public void setKategorija_komunalne_takse(String kategorija_komunalne_takse) {
        this.kategorija_komunalne_takse = kategorija_komunalne_takse;
    }

    public String getIznos_komunalne_takse() {
        return iznos_komunalne_takse;
    }

    public void setIznos_komunalne_takse(String iznos_komunalne_takse) {
        this.iznos_komunalne_takse = iznos_komunalne_takse;
    }

    public String getIznos_republicke_takse() {
        return iznos_republicke_takse;
    }

    public void setIznos_republicke_takse(String iznos_republicke_takse) {
        this.iznos_republicke_takse = iznos_republicke_takse;
    }

 

    public String getPodrucje() {
        return podrucje;
    }

    public void setPodrucje(String podrucje) {
        this.podrucje = podrucje;
    }

 
    
    public void createSP() {
        Session sesija = HibernateUtil.createSessionFactory().openSession();

       Model_sp sp = new Model_sp();

        Transaction tx = null;

       
            sp.setOpis(opis);
            sp.setIznos_komunalne_takse(iznos_komunalne_takse);
            sp.setIznos_republicke_takse(iznos_republicke_takse);
            sp.setKategorija_komunalne_takse(kategorija_komunalne_takse);
            sp.setPodrucje(podrucje);
            sp.setSifra(sifra);
           
           

            try {
                tx = sesija.beginTransaction();

                sesija.save(sp);
            
                tx.commit();

            } catch (Exception ex) {
                System.out.println(ex);
            } finally {

                sesija.close();

            }

        }

    public static ArrayList<Model_sp> selectAllSP() {
      
        Session sesija = HibernateUtil.createSessionFactory().openSession();
        ArrayList<Model_sp> sp_collection = new ArrayList();
        Query query = sesija.createQuery("from sp");
        sp_collection = (ArrayList<Model_sp>) query.list();
       
        return sp_collection;

    }
    
    public void updateSP(int id, Model_sp sp) {
        Session sesija = null;
        try {
            sesija = HibernateUtil.createSessionFactory().openSession();

            Model_sp s = (Model_sp) sesija.get(Model_sp.class, id) ;               //(Model_sp.class, sifra);

           if (sp.getSifra() != null) {
                s.setSifra(sp.getSifra());
            }

           if(sp.getPodrucje() !=null)
           {
               s.setPodrucje(sp.getPodrucje());
           }
           if(sp.getOpis() != null)
           {
               s.setOpis(sp.getOpis());
           }
           if(sp.getKategorija_komunalne_takse() != null)
           {
               s.setKategorija_komunalne_takse(sp.getKategorija_komunalne_takse());
           }
           if(sp.getIznos_republicke_takse() != null)
           {
               s.setIznos_republicke_takse(sp.getIznos_republicke_takse());
           }
           if(sp.getIznos_komunalne_takse() != null)
           {
               s.setIznos_komunalne_takse(sp.getIznos_komunalne_takse());
           }
            Transaction tx = null;
            try {
                tx = sesija.beginTransaction();

                sesija.update(s);

                tx.commit();
            } catch (HibernateException eh) {
                if (tx != null) {
                    tx.rollback();
                }

            }

        } catch (HibernateException ex) {
            System.out.println(ex);
        } finally {
            sesija.close();
        }

   
    }
    public static ArrayList<Model_sp> selectSifraSP(String sifra) {
      
        Session sesija = HibernateUtil.createSessionFactory().openSession();
        ArrayList<Model_sp> sp_collection = new ArrayList();
        Query query = sesija.createQuery("from Model_sp as sp where sp.sifra ='"+sifra+"'");
        sp_collection = (ArrayList<Model_sp>) query.list();
       
        return sp_collection;

    }
  public static ArrayList<Model_sp> selectOpisSP(String opis) {
      
        Session sesija = HibernateUtil.createSessionFactory().openSession();
        ArrayList<Model_sp> sp_collection = new ArrayList();
        Query query = sesija.createQuery("from Model_sp as sp where sp.opis like '%"+opis+"%' ");
        sp_collection = (ArrayList<Model_sp>) query.list();
       
        return sp_collection;

    }
    public static ArrayList<Model_sp> selectPodrucjeSP(String podrucje) {
      
        Session sesija = HibernateUtil.createSessionFactory().openSession();
        ArrayList<Model_sp> sp_collection = new ArrayList();
        Query query = sesija.createQuery("from Model_sp as sp where sp.podrucje ='"+podrucje+"'");
        sp_collection = (ArrayList<Model_sp>) query.list();
       
        return sp_collection;

    }
      
    
    
    }
    
    

