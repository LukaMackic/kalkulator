
package controller;

import java.util.ArrayList;
import model.Model_doo;
import model.Model_sp;
import static model.Model_sp.selectOpisSP;
import static model.Model_sp.selectPodrucjeSP;


public class Metode {
    int O = 500; //licni odbitak
    
    public static double doprinosZaPIO(double brutoplata)
    {
        return brutoplata/100*18.5;
    }
    public static double doprinosZaZO(double brutoplata)
    {
        return brutoplata/100*12;
    }
    public static double doprinosZaZaposljavanje(double brutoplata)
    {
        return brutoplata/100*0.6;
    }
    public static double doprinosZaDZ(double brutoplata)
    {
        return brutoplata/100*1.7;
    }
    
    public static double BrutoPlata(double isplataRadniku)
    {
        return (isplataRadniku-50)/0.6048;
    }
    public static double Doprinosi(double brutoPlata)
    {
        return brutoPlata*32.8/100;
    }
    public static double PlataPreOporezivanja(double brutoPlata)
    {
        return brutoPlata*0.672;
    }
    public static double porezNaLicniDohodak(double  brutoPlata)
    {
        return  (brutoPlata*0.672-500)*0.1;
    }
    
    
    public static void main(String[] args) {
       
        
          ArrayList<Model_sp> sp_collection = selectPodrucjeSP("A");
        
         for(int i=0;i<sp_collection.size();i++)
         {
             System.out.println(sp_collection.get(i).getOpis());
         }
    }
    
    public static ArrayList<String> slanjeDOO( ArrayList<Model_doo> lista){
       ArrayList<String> pomocna = new ArrayList();
       
        String string = "";
         
             for(int i=0;i<lista.size();i++)
        {
            String str="";
            str=str.concat(lista.get(i).getOpis_djelatnosti());
            str = str.concat(" (");
            str = str.concat(lista.get(i).getSifra());
            str = str.concat(")");
            str = str.concat(";");
            pomocna.add(str);
        }
        string = pomocna.get(pomocna.size()-1);
        string =  string.substring(0, string.length() - 1);
        pomocna.remove(pomocna.size()-1);
        pomocna.add(string);
        return pomocna;
    
    }
    
    
    
    
}
