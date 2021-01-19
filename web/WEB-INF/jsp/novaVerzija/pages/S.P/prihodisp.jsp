<%-- 
    Document   : prihodi-sp
    Created on : Dec 23, 2020, 12:29:01 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>S.P/Planirani prihodi</title>
    <link rel="stylesheet" href="css/style-prihodi-doo.css">
    
    
    </head>
    
   <body> 
   <!-- Navigation testiranje -->
 <nav>
    <div class="logo">
        <a href="index.htm" id="logo1">
            <picture>
                <source media="(min-width: 1100px)" srcset="img/smartlogo.png">
                <source srcset="img/smartlogo-mobile.png">
                <img src="OtherImage.png" alt="IfItDoesntMatchAnyMedia">
            </picture>
        </a>
    </div>
    <span class="divider"></span>
    <div class="afterlogo">
        <p>Kalkulator troškova poslovanja</p>
    </div>
    <ul class="menu">
        <li id="slink"><a href="https://www.smartoffice.ba/" class="navbutton">www.smartoffice.ba</a></li>
    </ul>
    <div class="burger">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
    </div>

</nav>
<!-- End of navigation -->


     
        <div id="headertop">
            
            <h1>Planirani prihodi</h1>

            <p>Kolike prihode očekujete u prvoj godini?</p>
        </div>
    
<div class="opcija">
<form id="forma" action = "/kalkulator/pregled.htm" method="post">
  
 
    <div class="check">
  <label for="jedan" class="labela"> Do 50.000 KM
      <input class="check2" id="jedan" type="radio" name="check" checked="true" value="do50k" >
   
   <span class="checkmark"></span>
</label>
</div>
    </br>
<div class="check">
  <label for="dva" class="labela"> Preko 50.000 KM
   <input class="check2" id="dva" type="radio" name="check" value="preko50k" >
   
   <span class="checkmark"></span>
</label>
</div>
    
    </br>
 
             <input type="hidden" id="radnoVrijeme" name="radnoVrijeme" value ="${radnoVrijeme}"></input>
             <input type="hidden" id="plate" name="plate" value="${plate}"></input>  
             <input type="hidden" id="djelatnost" name="djelatnost" value = "${djelatnost}"></input>
             <input type="hidden" id="obavljase" name="obavljase" value = "${opcija}"></input>
             <input type="hidden"  name="oblik" value = "sp"></input>

   <input type="submit" id='button-submit' value="Rezultat">
   
</form>
</div>
    

   

        
        <!---footer-->

  
    <div class="footer">
          
        <div class="footer-list">

        <div class="broj" id="active">1</div><p>Oblik</p>
            <span></span>
        <div class="broj" id="active" >2</div><p>Djelatnost</p>
            <span></span>
        <div class="broj" id="active">3</div><p>Zaposleni</p>
            <span></span>
        <div class="broj" id="active">4</div><p>Prihod</p>

        </div> 

    </div>
  

        <script src="js/script.js"></script>
        
   
    </body>  
</html>
      
    
        
