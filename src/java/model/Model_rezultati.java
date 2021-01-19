
package model;

import Hibernate.HibernateUtil;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.Session;
import org.hibernate.Transaction;

@Entity
@Table(name = "rezultati")
public class Model_rezultati implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String oblik;
    private String djelatnost;
    private String prihodi;
    private String zaposleni;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOblik() {
        return oblik;
    }

    public void setOblik(String oblik) {
        this.oblik = oblik;
    }

    public String getDjelatnost() {
        return djelatnost;
    }

    public void setDjelatnost(String djelatnost) {
        this.djelatnost = djelatnost;
    }

    public String getPrihodi() {
        return prihodi;
    }

    public void setPrihodi(String prihodi) {
        this.prihodi = prihodi;
    }

    public String getZaposleni() {
        return zaposleni;
    }

    public void setZaposleni(String zaposleni) {
        this.zaposleni = zaposleni;
    }
  
      public void createRezultati() {
       Session sesija = HibernateUtil.createSessionFactory().openSession();

       Model_rezultati rezultati = new Model_rezultati();

        Transaction tx = null;

        rezultati.setDjelatnost(djelatnost);
        rezultati.setOblik(oblik);
        rezultati.setPrihodi(prihodi);
        rezultati.setZaposleni(zaposleni);
    

            try {
                tx = sesija.beginTransaction();

                sesija.save(rezultati);
            
                tx.commit();

            } catch (Exception ex) {
                System.out.println(ex);
            } finally {

                sesija.close();

            }

        }
    
}
