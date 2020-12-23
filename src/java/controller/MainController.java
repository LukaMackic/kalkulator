
package controller;

import static controller.Metode.BrutoPlata;
import static controller.Metode.Doprinosi;
import static controller.Metode.porezNaLicniDohodak;
import static controller.Metode.slanjeDOO;
import static controller.Metode.slanjeSP;
import java.util.ArrayList;
import model.Model_doo;
import static model.Model_doo.selectPodrucjeDOO;
import static model.Model_doo.selectSifraDOO;
import model.Model_sp;
import static model.Model_sp.selectPodrucjeSP;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController {
  //oblik registracije 
    @RequestMapping(value="/oblikRegistracije.htm" , method = RequestMethod.GET)
     public ModelAndView oblikRegistracije()
     {
         ModelAndView model = new ModelAndView("novaVerzija/pages/oblik");
    
        return model;       
     }
     // djelatnosti doo
     @RequestMapping(value="/djelatnostiDOO.htm" , method = RequestMethod.POST)
     public ModelAndView djelatnostiDOO()
     {
         ModelAndView model = new ModelAndView("novaVerzija/pages/djelatnosti");
      
        ArrayList<Model_doo> listaA = selectPodrucjeDOO("A");
        ArrayList<Model_doo> listaB = selectPodrucjeDOO("B");
        ArrayList<Model_doo> listaC = selectPodrucjeDOO("C");
        ArrayList<Model_doo> listaD = selectPodrucjeDOO("D");
        ArrayList<Model_doo> listaE = selectPodrucjeDOO("E");
        ArrayList<Model_doo> listaF = selectPodrucjeDOO("F");
        ArrayList<Model_doo> listaG = selectPodrucjeDOO("G");
        ArrayList<Model_doo> listaH = selectPodrucjeDOO("H");
        ArrayList<Model_doo> listaI = selectPodrucjeDOO("I");
        ArrayList<Model_doo> listaJ = selectPodrucjeDOO("J");
        ArrayList<Model_doo> listaK = selectPodrucjeDOO("K");
        ArrayList<Model_doo> listaL = selectPodrucjeDOO("L");
        ArrayList<Model_doo> listaM = selectPodrucjeDOO("M");
        ArrayList<Model_doo> listaN = selectPodrucjeDOO("N");
        ArrayList<Model_doo> listaO = selectPodrucjeDOO("O");
        ArrayList<Model_doo> listaP = selectPodrucjeDOO("P");
        ArrayList<Model_doo> listaQ = selectPodrucjeDOO("Q");
        ArrayList<Model_doo> listaR = selectPodrucjeDOO("R");
        ArrayList<Model_doo> listaT = selectPodrucjeDOO("T");
        ArrayList<Model_doo> listaU = selectPodrucjeDOO("U");
 
      ArrayList<String> pomocnaA =slanjeDOO(listaA);
      model.addObject("podrucjeA",pomocnaA);
      ArrayList<String> pomocnaB =slanjeDOO(listaB);
      model.addObject("podrucjeB",pomocnaB);
      ArrayList<String> pomocnaC =slanjeDOO(listaC);
      model.addObject("podrucjeC",pomocnaC);
      ArrayList<String> pomocnaD =slanjeDOO(listaD);
      model.addObject("podrucjeD",pomocnaD);
      ArrayList<String> pomocnaE =slanjeDOO(listaE);
      model.addObject("podrucjeE",pomocnaE);
      ArrayList<String> pomocnaF =slanjeDOO(listaF);
      model.addObject("podrucjeF",pomocnaF);
      ArrayList<String> pomocnaG =slanjeDOO(listaG);
      model.addObject("podrucjeG",pomocnaG);
      ArrayList<String> pomocnaH =slanjeDOO(listaH);
      model.addObject("podrucjeH",pomocnaH);
      ArrayList<String> pomocnaI =slanjeDOO(listaI);
      model.addObject("podrucjeI",pomocnaI);
      ArrayList<String> pomocnaJ =slanjeDOO(listaJ);
      model.addObject("podrucjeJ",pomocnaJ);
      ArrayList<String> pomocnaK =slanjeDOO(listaK);
      model.addObject("podrucjeK",pomocnaK);
      ArrayList<String> pomocnaL =slanjeDOO(listaL);
      model.addObject("podrucjeL",pomocnaL);
      ArrayList<String> pomocnaM =slanjeDOO(listaM);
      model.addObject("podrucjeM",pomocnaM);
      ArrayList<String> pomocnaN =slanjeDOO(listaN);
      model.addObject("podrucjeN",pomocnaN);
      ArrayList<String> pomocnaO =slanjeDOO(listaO);
      model.addObject("podrucjeO",pomocnaO);
      ArrayList<String> pomocnaP =slanjeDOO(listaP);
      model.addObject("podrucjeP",pomocnaP);
      ArrayList<String> pomocnaQ =slanjeDOO(listaQ);
      model.addObject("podrucjeQ",pomocnaQ);
      ArrayList<String> pomocnaR =slanjeDOO(listaR);
      model.addObject("podrucjeR",pomocnaR);
      ArrayList<String> pomocnaT =slanjeDOO(listaT);
      model.addObject("podrucjeT",pomocnaT);
      ArrayList<String> pomocnaU =slanjeDOO(listaU);
      model.addObject("podrucjeU",pomocnaU);
     
        return model;       
     }
     //zaposleni DOO
      @RequestMapping(value="/zaposleniDOO.htm" , method = RequestMethod.POST)
     public ModelAndView zaposleniDOO(@RequestParam("djelatnost") String djelatnost)
     {
         ModelAndView model = new ModelAndView("novaVerzija/pages/D.O.O/workersdoo");
         model.addObject("djelatnost", djelatnost);
         return model;
     }
     //prihodi DOO
      @RequestMapping(value="/prihodiDOO.htm" , method = RequestMethod.POST)
     public ModelAndView prihodiDOO(@RequestParam("radnoVrijeme") String radnovrijeme,
                                    @RequestParam("plate") String plate,
                                    @RequestParam("djelatnost") String djelatnost)
     {
       ModelAndView model = new ModelAndView("novaVerzija/pages/D.O.O/prihodidoo");
       model.addObject("radnoVrijeme",radnovrijeme);
       model.addObject("plate",plate);
       model.addObject("djelatnost" ,djelatnost);
 
      return model; 
     }
     //pregled 
     @RequestMapping(value="/pregled.htm" , method = RequestMethod.POST)
     public ModelAndView pregledDOO(@RequestParam("radnoVrijeme") String radnovrijeme,
                                    @RequestParam("plate") String plate,
                                    @RequestParam("djelatnost") String djelatnost,
                                    @RequestParam("check") String prihodi,
                                    @RequestParam("oblik") String oblik)
     {
       ModelAndView model = new ModelAndView("novaVerzija/pages/rezultati");
       // oblik registracije
          if(oblik.equals("doo"))
         {
             model.addObject("oblik","Društvo sa ograničenom odgovornošću (D.O.O.)");
         }
         else{
             model.addObject("oblik","Samostalni preduzetnik (S.P.)");
         }
          //broj zaposlenih
         model.addObject("brojZaposlenih", String.valueOf(plate.split("#").length));
         //djelatnost 
        char sifra[] = djelatnost.toCharArray();
        int j = sifra.length-1;
        String sifra_djelatnosti = "";
        while(sifra[j]!='(')
        {
            if(sifra[j]!=')')
                sifra_djelatnosti = sifra_djelatnosti.concat(String.valueOf(sifra[j]));
              
            j--;
        }
         ArrayList<Model_doo> posifri = selectSifraDOO(new StringBuilder(sifra_djelatnosti).reverse().toString());
         model.addObject("djelatnost",posifri.get(0).getOpis_djelatnosti()+" ("+ posifri.get(0).getSifra()+")" );

         //radnici 
              
             
              
              String netoplate[] = plate.split("#");
              //bruto plate
              String brutoplata ="";
                   for(int i=0;i<netoplate.length;i++)
              {       
                   String result = String.format("%.2f",BrutoPlata(Double.parseDouble(netoplate[i])) );
                  brutoplata=brutoplata.concat(String.valueOf(result));
                  brutoplata = brutoplata.concat("#");
              } 
              String brutoplate[] = brutoplata.split("#");
              //doprinosi i licni dohodak
              String doprinosi ="";
              String licnidohodak = "";
              for(int i=0;i<brutoplate.length;i++)
              {
               String result = String.format("%.2f", Doprinosi(Double.parseDouble(brutoplate[i])));
               doprinosi =  doprinosi.concat(String.valueOf(result));
               doprinosi = doprinosi.concat("#");
               result = String.format("%.2f", porezNaLicniDohodak(Double.parseDouble(brutoplate[i])));
               licnidohodak = licnidohodak.concat(String.valueOf(result));
               licnidohodak = licnidohodak.concat("#");
              }
              
         
         plate =  plate.substring(0,(plate.length()-1));
         doprinosi =  doprinosi.substring(0 ,(doprinosi.length()-1));
         licnidohodak =  licnidohodak.substring(0, (licnidohodak.length()-1));
         brutoplata = brutoplata.substring(0,(brutoplata.length()-1));
         Double ukupneplate = 0.0;
         for(int i=0;i<brutoplate.length;i++)
        {
           ukupneplate += Double.parseDouble(brutoplate[i]);
        }
         model.addObject("ukupneplate",String.valueOf(ukupneplate));
         model.addObject("netoplate",plate);
         model.addObject("doprinosi",doprinosi);
         model.addObject("poreziLD",licnidohodak);
         model.addObject("brutoplate",brutoplata);
         
         // MJESECNI TROSKOVI
            //komunalna taksa
            String komunalna = posifri.get(0).getIznos_komunalne_takse();
           komunalna = komunalna.concat(" KM");
        model.addObject("komunalna",komunalna);
         //klasifikacija pravnog lica i republicka taksa 
             String grupa = String.valueOf(posifri.get(0).getGrupa_id());
             String republicka="";
         if(oblik.equals("doo"))
         {
             switch(grupa)
             {
                 case "1": republicka = "5000 KM"; break;
                 case "2": republicka = "2500 KM"; break;
                 case "4": republicka = "0 KM"; break;
             }  
                 switch(prihodi)
             {  
                 case "do50000" :
                 case "do500000" :  if(grupa.equals("3")){republicka = "300 KM";}  model.addObject("prihodi","Mikro pravno lice (prihod do 500.000KM)"); break;
                 case "do2000000" :if(grupa.equals("3")){republicka = "300 KM";}model.addObject("prihodi","Malo pravno lice (prihod do 2.000.000KM)"); break;
                 case "do8m":  if(grupa.equals("3")){republicka = "400 KM";} model.addObject("prihodi","Srednje pravno lice (prihod do 8.000.000KM)"); break;
                 default: if(grupa.equals("3")){republicka = "500 KM";} model.addObject("prihodi","Veliko pravno lice (prihod preko 8.000.000KM)"); break;
              }
              model.addObject("republicka",republicka);
              
         }
         
  
      return model; 
     }
     
     /////////////////////////////////////////////////////////////////////////////////////////////////////////////////    
     //                             S   P 
     
//djelatnosti sp
     
    @RequestMapping(value="/djelatnostiSP.htm" , method = RequestMethod.POST)
     public ModelAndView djelatnostiSP()
     {
         ModelAndView model = new ModelAndView("novaVerzija/pages/S.P/djelatnostiSP");
      
        ArrayList<Model_sp> listaA = selectPodrucjeSP("A");
        ArrayList<Model_sp> listaC = selectPodrucjeSP("C");
        ArrayList<Model_sp> listaD = selectPodrucjeSP("D");
        ArrayList<Model_sp> listaE = selectPodrucjeSP("E");
        ArrayList<Model_sp> listaF = selectPodrucjeSP("F");
        ArrayList<Model_sp> listaG = selectPodrucjeSP("G");
        ArrayList<Model_sp> listaH = selectPodrucjeSP("H");
        ArrayList<Model_sp> listaI = selectPodrucjeSP("I");
        ArrayList<Model_sp> listaJ = selectPodrucjeSP("J");
        ArrayList<Model_sp> listaK = selectPodrucjeSP("K");
        ArrayList<Model_sp> listaL = selectPodrucjeSP("L");
        ArrayList<Model_sp> listaM = selectPodrucjeSP("M");
        ArrayList<Model_sp> listaN = selectPodrucjeSP("N");
        ArrayList<Model_sp> listaP = selectPodrucjeSP("P");
        ArrayList<Model_sp> listaQ = selectPodrucjeSP("Q");
        ArrayList<Model_sp> listaR = selectPodrucjeSP("R");
        ArrayList<Model_sp> listaS = selectPodrucjeSP("S");
 
      ArrayList<String> pomocnaA =slanjeSP(listaA);
      model.addObject("podrucjeA",pomocnaA);
      ArrayList<String> pomocnaC =slanjeSP(listaC);
      model.addObject("podrucjeC",pomocnaC);
      ArrayList<String> pomocnaD =slanjeSP(listaD);
      model.addObject("podrucjeD",pomocnaD);
      ArrayList<String> pomocnaE =slanjeSP(listaE);
      model.addObject("podrucjeE",pomocnaE);
      ArrayList<String> pomocnaF =slanjeSP(listaF);
      model.addObject("podrucjeF",pomocnaF);
      ArrayList<String> pomocnaG =slanjeSP(listaG);
      model.addObject("podrucjeG",pomocnaG);
      ArrayList<String> pomocnaH =slanjeSP(listaH);
      model.addObject("podrucjeH",pomocnaH);
      ArrayList<String> pomocnaI =slanjeSP(listaI);
      model.addObject("podrucjeI",pomocnaI);
      ArrayList<String> pomocnaJ =slanjeSP(listaJ);
      model.addObject("podrucjeJ",pomocnaJ);
      ArrayList<String> pomocnaK =slanjeSP(listaK);
      model.addObject("podrucjeK",pomocnaK);
      ArrayList<String> pomocnaL =slanjeSP(listaL);
      model.addObject("podrucjeL",pomocnaL);
      ArrayList<String> pomocnaM =slanjeSP(listaM);
      model.addObject("podrucjeM",pomocnaM);
      ArrayList<String> pomocnaN =slanjeSP(listaN);
      model.addObject("podrucjeN",pomocnaN);
      ArrayList<String> pomocnaP =slanjeSP(listaP);
      model.addObject("podrucjeP",pomocnaP);
      ArrayList<String> pomocnaQ =slanjeSP(listaQ);
      model.addObject("podrucjeQ",pomocnaQ);
      ArrayList<String> pomocnaR =slanjeSP(listaR);
      model.addObject("podrucjeR",pomocnaR);
      ArrayList<String> pomocnaS =slanjeSP(listaS);
      model.addObject("podrucjeS",pomocnaS);
     
     return model;
     }
     
     // zaposleni sp
     
      @RequestMapping(value="/zaposleniSP.htm" , method = RequestMethod.POST)
     public ModelAndView zaposleniSP(@RequestParam("djelatnost") String djelatnost)
     {
         ModelAndView model = new ModelAndView("novaVerzija/pages/S.P/workerssp");
         model.addObject("djelatnost", djelatnost);
         return model;
     }
     
     //prihodi SP
      @RequestMapping(value="/prihodiSP.htm" , method = RequestMethod.POST)
     public ModelAndView prihodiSP(@RequestParam("radnoVrijeme") String radnovrijeme,
                                   @RequestParam("plate") String plate,
                                   @RequestParam("djelatnost") String djelatnost)
     {
       ModelAndView model = new ModelAndView("novaVerzija/pages/S.P/prihodisp");
       model.addObject("radnoVrijeme",radnovrijeme);
       model.addObject("plate",plate);
       model.addObject("djelatnost" ,djelatnost);
 
      return model; 
     }

     
}

