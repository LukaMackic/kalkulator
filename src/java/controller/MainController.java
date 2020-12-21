
package controller;

import static controller.Metode.slanjeDOO;
import java.util.ArrayList;
import model.Model_doo;
import static model.Model_doo.selectPodrucjeDOO;
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
     //pregled DOO 
     @RequestMapping(value="/pregledDOO.htm" , method = RequestMethod.POST)
     public ModelAndView pregledDOO(@RequestParam("radnoVrijeme") String radnovrijeme,
                                    @RequestParam("plate") String plate,
                                    @RequestParam("djelatnost") String djelatnost,
                                    @RequestParam("check") String prihodi)
     {
       ModelAndView model = new ModelAndView("novaVerzija/pages/D.O.O/pregleddoo");
   
      return model; 
     }
     
     
     
     
     
     
     
     
     
     
     
      @RequestMapping(value="/gotodjelatnostiSP.htm" , method = RequestMethod.POST)
     public ModelAndView djelatnostisp()
     {
           
         ModelAndView model = new ModelAndView("djelatnostiSP");
        model.addObject("msg","dobro dosli na djelatnosti sp");
          model. addObject("sp","sp");
          return model;
     }
  
     @RequestMapping(value="/testworkers.htm" , method = RequestMethod.POST)
     public ModelAndView pretragasp(@RequestParam("radnovrijeme") String radnovrijeme,
         @RequestParam("plate") String plate)
     {
       ModelAndView model = new ModelAndView("test");
        ArrayList<Model_sp> lista = selectPodrucjeSP("A");
        ArrayList<String> lista1 = new ArrayList();
         
          for(int i=0;i<lista.size();i++)
        {
            String str="";
            str=str.concat(lista.get(i).getOpis());
            str = str.concat("(");
            str = str.concat(lista.get(i).getSifra());
            str = str.concat(")");
            str = str.concat(";");
            lista1.add(str);
        }
        String string = lista1.get(lista1.size()-1);
        
        string =  string.substring(0, string.length() - 1);
        lista1.remove(lista1.size()-1);
        lista1.add(string);
        model.addObject("lista",lista1);
        model.addObject("test",radnovrijeme);
        model.addObject("test2", plate);
         return model;       
     }

     @RequestMapping(value="/pretragasp.htm" , method = RequestMethod.POST)
     public ModelAndView pretragasp()
     {
       
         
         ModelAndView model = new ModelAndView("workersdoo/smartoffice/pages/D.O.O/workersdoo");
     
       
   
         return model;       
     }

}

