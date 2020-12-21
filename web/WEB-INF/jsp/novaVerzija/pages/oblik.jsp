<%-- 
    Document   : oblik
    Created on : 17-Dec-2020, 14:10:22
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/style-oblik.css" rel="stylesheet">
    <title>Oblik djelatnosti</title>
    <style>
        
        
.footer {
    background-color: #222222;
    margin:0 auto;
    position:absolute;
    width:100%;
    bottom:0px;
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
        <p>Kalkulator Troškova Poslovanja</p>
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


    <div id="globus">
        <div class="earth">
            <h1>Oblik registracije firme</h1>
        
            <p>Koji oblik privredne djelatnosti planirate registrovati?</p>

        </div> 
        <div id="centar">
        <form class="forma" action ="/kalkulator/djelatnostiDOO.htm" method ="post">
            
                <label for="doo1" class="labela"><p id="labela1p">Društvo sa ograničenom odgovornošću (D.O.O.)</p>
                    <div class="tooltip1"><img src="img/Path 469.svg">
                    <span class="tooltiptext">Društvo sa ograničenom odgovornošću je
                         privredno društvo u kome svaki član društva ima udio u osnvnom
                          kapitalu društva, tim da član društva ne odgovara za obaveze društva 
                          već samo snosi rizik poslovanja do visine osnivačkog uloga u društvo.               
                         </span></div>
                </label>
            
                <input id="doo1" class="doo" type="submit" value="" >
                
        </form>


        <form class="forma">
            
            <label for="doo2" class="labela"><p>Samostalni preduzetnik (S.P.)</p>
                <div class="tooltip1"><img src="img/Path 469.svg">
                    <span class="tooltiptext">S.P. je fizičko lice koje obavlja jednu od 
                        preduzetničkih djelatnosti i odgovornost za obaveze iz poslovanja
                         snosi cjelokupnom svojom imovinom.               
                        </span>
            </div></label>
            
            <input id="doo2" class="doo" type="submit" value="" >
            
        </form>
        </div>
        
    </div><!-- end #globus -->

    <div class="footer">
          
        <div class="footer-list">

        <div class="broj" id="active">1</div><p>Oblik</p>
            <span></span>
        <div class="broj" >2</div><p>Djelatnost</p>
            <span></span>
        <div class="broj">3</div><p>Zaposleni</p>
            <span></span>
        <div class="broj">4</div><p>Prihod</p>

        </div> 

    </div>
    
    
  
</body>
</html>