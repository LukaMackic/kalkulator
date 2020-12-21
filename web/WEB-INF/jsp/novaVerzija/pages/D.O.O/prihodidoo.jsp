<%-- 
    Document   : prihodidoo
    Created on : 18-Dec-2020, 10:07:25
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>D.O.O/Planirani prihodi</title>
    <link rel="stylesheet" href="css/style-prihodi-doo.css">
    <style>
        #button-submit {
    background: url("img/ic_arrow_forward_24px\ \(1\).svg") 175px center   no-repeat;
    background-color:  #3EC300;
    box-shadow: 0px 10px 20px #3EC30080;
    color:#FFF;
    font-size: 20px !important;
    text-align: center;
    border-radius: 33px;
    width:280px;
    height: 61px;
    margin: 45px auto;
    font-size: 16px;
    font-weight: 600;
    border:none;
    cursor: pointer;
    display:block;
    padding-right: 25px;
}
    </style>
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
        <li><a href="#" class="afterlogo"></a></li>
        
        <li><a href="https://www.smartoffice.ba/" class="navbutton">www.smartoffice.ba <img src="img/ic_arrow_forward_24px.svg" alt="arrow24"></a></li>
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
<form id="forma" action = "/kalkulator/pregledDOO.htm" method="post">
    
<div class="check">
  <label for="pet" class="labela"> Do 50.000 KM
   <input class="check2" id="pet" type="radio" name="check" value="radio1" >
   
   <span class="checkmark"></span>
</label>
</div>
    </br>
    <div class="check">
  <label for="jedan" class="labela"> Do 500.000 KM
   <input class="check2" id="jedan" type="radio" name="check" value="radio1" >
   
   <span class="checkmark"></span>
</label>
</div>
  </br>

  <div class="check">
  <label for="dva" class="labela"> Do 2.000.000 KM
   <input class="check2" id="dva" type="radio" name="check" value="radio1" checked>
   
   <span class="checkmark"></span>
</label>
</div>
</br>

<div class="check">
  <label for="tri" class="labela"> Do 8.000.000 KM 
   <input class="check2" id="tri" type="radio" name="check" value="radio1" checked>
   
   <span class="checkmark"></span>
</label>
</div>
</br>
<div class="check">
  <label for="cetiri" class="labela"> Preko 8.000.000 KM
   <input class="check2" id="cetiri" type="radio" name="check" value="radio1" checked>
   
   <span class="checkmark"></span>
</label>
   </div>
             <input type="hidden" id="radnoVrijeme" name="radnoVrijeme" value ="${radnoVrijeme}"></input>
            <input type="hidden" id="plate" name="plate" value="${plate}"></input>  
            <input type="hidden" id="djelatnost" name="djelatnost" value = "${djelatnost}"></input>


   <input type="submit" id='button-submit' value="Rezultat">
   
</form>
</div>
    
    

   

        
        <!---footer-->

  
    <div class="footer">
          
        <div class="footer-list">

        <div class="broj">1</div><p>Oblik</p>
            <span></span>
        <div class="broj" >2</div><p>Djelatnost</p>
            <span></span>
        <div class="broj">3</div><p>Zaposleni</p>
            <span></span>
        <div class="broj">4</div><p>Prihod</p>

        </div> 

    </div>
  

        <script src="js/script.js"></script>
    </body>  
</html>
      
    
        