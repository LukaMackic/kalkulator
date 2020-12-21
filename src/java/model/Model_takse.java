
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
@Table(name = "kategorija_republicke_takse_doo")
public class Model_takse implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private int do_500K;
    private int do_2M;
    private int do_8M;
    private int preko_8M;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDo_500K() {
        return do_500K;
    }

    public void setDo_500K(int do_500K) {
        this.do_500K = do_500K;
    }

    public int getDo_2M() {
        return do_2M;
    }

    public void setDo_2M(int do_2M) {
        this.do_2M = do_2M;
    }

    public int getDo_8M() {
        return do_8M;
    }

    public void setDo_8M(int do_8M) {
        this.do_8M = do_8M;
    }

    public int getPreko_8M() {
        return preko_8M;
    }

    public void setPreko_8M(int preko_8M) {
        this.preko_8M = preko_8M;
    }
    
    
      public void createTakse() {
        Session sesija = HibernateUtil.createSessionFactory().openSession();

       Model_takse taksa = new Model_takse();

        Transaction tx = null;

       
            taksa.setDo_2M(do_2M);
            taksa.setDo_500K(do_500K);
            taksa.setDo_8M(do_8M);
            taksa.setPreko_8M(preko_8M);
           
           

            try {
                tx = sesija.beginTransaction();

                sesija.save(taksa);
            
                tx.commit();

            } catch (Exception ex) {
                System.out.println(ex);
            } finally {

                sesija.close();

            }

        }
       public static ArrayList<Model_takse> selectID(String id) {
      
        Session sesija = HibernateUtil.createSessionFactory().openSession();
        ArrayList<Model_takse> takse_collection = new ArrayList();
        Query query = sesija.createQuery("from Model_takse as takse where takse.id ='"+id+"'");
        takse_collection = (ArrayList<Model_takse>) query.list();
       
        return takse_collection;

    }
}
