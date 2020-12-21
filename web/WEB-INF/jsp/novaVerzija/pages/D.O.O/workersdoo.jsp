<%-- 
    Document   : workersdoo
    Created on : 18-Dec-2020, 10:00:42
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>D.O.O/Zaposleni</title>
    <link rel="stylesheet" type="text/css" media="All" href="css/style-workers-doo.css">
    
    <style>
        
        
    </style>
<script>
    var br=0;
    var ok=true;

function validateForm(){
    ok=true;
    var plate='';
    var radnoVrijeme='';
for (var brojac=1;brojac<=br;brojac++) {
   var hour=document.getElementById('hours'+brojac).value;
   var pay=document.getElementById('pay'+brojac).value;
    plate+=pay+'#';
    radnoVrijeme+=hour+'#';
   if (hour==4 && pay<260){ document.getElementById('alert'+brojac).innerHTML='*Iznos najniže plate u Republici Srpskoj za pola radnog vremena je 260,00 KM.'; 
                            document.getElementById('pay'+brojac).style.border = 'solid 1px red';
                            ok=false;}
   if (hour==8 && pay<520){ document.getElementById('alert'+brojac).innerHTML='*Iznos najniže plate u Republici Srpskoj za puno radno vrijeme  je 520,00 KM.';
                            document.getElementById('pay'+brojac).style.border = 'solid 1px red';
                            ok=false;}
}
if(!ok) return false;
if (ok){
document.getElementById('radnoVrijeme').value=radnoVrijeme;
document.getElementById('plate').value=plate;

return true;
}}

function dodaj(){
    br++;    
    var list =document.getElementById("insert");
    var entry = document.createElement('li');
    entry.innerHTML="<label for='hours"+br+"'>Radnik "+br+"</label><select class='hours' id='hours"+br+"'><option value='4'>Radno vrijeme (4h)</option><option value='8' >Radno vrijeme (8h)</option> </select><label for='pay"+br+"' class='label-pay'>Neto plata:</label><input type='number' class='pay' id='pay"+br+"' required='required'><label for='pay' class='km-pay' id='km-pay"+br+"'>KM  <img  onmouseenter='hover("+br+")' onmouseout='ukini("+br+")' onmouseuot='hoverOut("+br+")' src='img/Path 469.svg' alt='info1' id='img-option' class='img-option'> </label><label class='alert' id='alert"+br+"'></label>";
    list.appendChild(entry);        
}

function hover(x) {
    var sati = document.getElementById('hours'+x).value;
    if (sati==4) {document.getElementById('tooltip').innerText='Iznos najniže plate u Republici Srpskoj za pola radnog vremena je 260,00 KM.';
                    document.getElementById("tooltip").style.visibility='visible';
                  } 
    else
    {document.getElementById('tooltip').innerText='Iznos najniže plate u Republici Srpskoj za puno radno vrijeme  je 520,00 KM.';
    document.getElementById("tooltip").style.visibility='visible';
                    }
}
function ukini() {
    document.getElementById("tooltip").style.visibility='hidden';
}


</script>






</head>




<body onLoad="dodaj()" >
    <h1>${djelatnost}</h1>
    
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


<div id="article-workers">
    <h1>Zaposleni</h1>
    <p>Unesite informacije o radnicima.</p>
</div>

    <div class="insert-over">
        <form class="option11" action="/kalkulator/prihodiDOO.htm" method="post" onSubmit="return validateForm()">
 
        <ol id="insert">

  

        </ol>

            <input type="button" id="button-dodaj" value="Dodaj još radnika" onClick="dodaj()"></input>
           <input type="submit" id="button-submit" value="Dalje">

            <!---BACKEND----podaci spremljeni u value odvojeni sa #-->
            <input type="hidden" id="radnoVrijeme" name="radnoVrijeme"></input>
            <input type="hidden" id="plate" name="plate"></input>  
            <input type="hidden" id="djelatnost" name="djelatnost" value = "${djelatnost}"></input>
            <!---BACKEND-->    

        </form >
    </div>
    <span class='tooltip' id='tooltip'></span>

      <!---footer-->
       <div class="footer">
          
        <div class="footer-list">

        <div class="broj" >1</div><p>Oblik</p>
            <span></span>
        <div class="broj" >2</div><p>Djelatnost</p>
            <span></span>
        <div class="broj">3</div><p>Zaposleni</p>
            <span></span>
        <div class="broj" id="notactive">4</div><p class="notactive">Prihod</p>

        </div> 

    </div>



  <script>
/*-----------pomjeranje tooltipa-------*/
  var tooltip = document.querySelectorAll('#tooltip');

document.addEventListener('mousemove', fn, false);

function fn(e) {
    for (var i=tooltip.length; i--;) {
        tooltip[i].style.left = e.pageX + 'px';
        tooltip[i].style.top = e.pageY + 'px';
    }
};


</script>
      
    
  
  

<script src="js/script.js"></script>
    
</body>
</html>
