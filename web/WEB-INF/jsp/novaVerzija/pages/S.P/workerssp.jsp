<%-- 
    Document   : workerssp
    Created on : Dec 23, 2020, 1:49:13 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>S.P/Zaposleni</title>
    <link rel="stylesheet" href="css/style-workers-sp.css">
    


    <script>
    var br=1;
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

var checkbox1 = document.getElementById('option1');
  if (checkbox1.checked) {
    var text1 = document.getElementById("osnovno").textContent;
   document.getElementById('opcija').value=text1;
  }
var checkbox2 = document.getElementById('option2');
  if (checkbox2.checked) {
    var text2 = document.getElementById("dopunsko").textContent;
    document.getElementById('opcija').value=text2;
  }
var checkbox3 = document.getElementById('option3');
  if (checkbox3.checked) {
    var text3 = document.getElementById("dodatno").textContent;
    document.getElementById('opcija').value=text3;
  }
return true;
}}

function handleClick() {
    br=1
	   document.getElementById("insert").innerHTML="";
	if (document.getElementById('option1').checked){ 
        var list =document.getElementById("insert");
        var entry = document.createElement('li');
        entry.innerHTML="<label for='hours "+br+"'>Radnik "+br+"</label><select class='hours' id='hours"+br+"'><option value='4'>Radno vrijeme (4h)</option><option value='8' >Radno vrijeme (8h)</option> </select><label for='pay"+br+"' class='label-pay'>Neto plata:</label><input type='number' onKeyPress='if(this.value.length==7) return false;' onkeydown='javascript: return event.keyCode === 8 || event.keyCode === 46 ? true : !isNaN(Number(event.key))' class='pay' id='pay"+br+"' required='required'><label for='pay' class='km-pay' id='km-pay"+br+"'>KM  <img  onmouseenter='hover("+br+")' onmouseout='ukini("+br+")'  src='img/Path 469.svg' alt='info1' id='img-option' class='img-option'> </label><label class='alert' id='alert"+br+"'></label>";
        list.appendChild(entry);
        document.getElementById("submit").innerHTML="<input type='button' id='button-dodaj' value='Dodaj još radnika' onClick='dodaj()'></input><input type='submit' id='button-submit' value='Dalje'>";
        
    }
    else 
   if (document.getElementById('option2').checked){
   var list =document.getElementById("insert");
   var entry = document.createElement('li');
   entry.innerHTML="<p class='napomena'> NAPOMENA: Fizičko lice može obavljati preduzetničku djelatnost kao dopunsko zanimanje isključivo ličnim radom, najduže do polovine sedmičnog punog radnog vremena, pod uslovom da je u radnom odnosu kod drugog poslodavca sa punim radnim vremenom.</p><select class='hours' id='hours"+br+"'><option value='4'>Radno vrijeme (4h)</option><option value='8' >Radno vrijeme (8h)</option> </select><label for='pay' class='label-pay'>Neto plata:</label><input type='number' onKeyPress='if(this.value.length==7) return false;' onkeydown='javascript: return event.keyCode === 8 || event.keyCode === 46 ? true : !isNaN(Number(event.key))' class='pay' id='pay"+br+"' required='required'><label for='pay' class='km-pay' id='km-pay"+br+"'>KM  <img  onmouseenter='hover()' onmouseout='ukini()' src='img/Path 469.svg' alt='info1' id='img-option"+br+"' class='img-option'> </label><label class='alert' id='alert"+br+"'></label>";
   list.appendChild(entry);   
   document.getElementById("submit").innerHTML="<input type='submit' id='button-submit' value='Dalje'>";
    }
   else 
	  if (document.getElementById('option3').checked){    
	        var list =document.getElementById("insert");
	        var entry = document.createElement('li');
	        entry.innerHTML="<p class='napomena'> NAPOMENA: Fizičko lice može obavljati preduzetničku djelatnost kao dodatno zanimanje ukoliko je student ili korisnik penzije. U tom slučaju mora da zaposli lice koje ispunjava uslove za obavljanjetražene djelatnosti.</p><label for='hours "+br+"'>Radnik "+br+"</label><select class='hours' id='hours"+br+"'><option value='4'>Radno vrijeme (4h)</option><option value='8' >Radno vrijeme (8h)</option> </select><label for='pay"+br+"' class='label-pay'>Neto plata:</label><input type='number' onKeyPress='if(this.value.length==7) return false;' onkeydown='javascript: return event.keyCode === 8 || event.keyCode === 46 ? true : !isNaN(Number(event.key))' class='pay' id='pay"+br+"' required='required'><label for='pay' class='km-pay' id='km-pay"+br+"'>KM  <img  onmouseenter='hover("+br+")' onmouseout='ukini("+br+")'  src='img/Path 469.svg' alt='info1' id='img-option' class='img-option'> </label><label class='alert' id='alert"+br+"'></label>";
	        list.appendChild(entry);
	        document.getElementById("submit").innerHTML="<input type='button' id='button-dodaj' value='Dodaj još radnika' onClick='dodaj()'></input><input type='submit' id='button-submit' value='Dalje'>";
	   
   }
   
}
function dodaj(){
    br++; 
    if(br<=50){
    var list =document.getElementById("insert");
    var entry = document.createElement('li');
    entry.innerHTML="<label for='hours "+br+"'>Radnik "+br+"</label><select class='hours' id='hours"+br+"'><option value='4'>Radno vrijeme (4h)</option><option value='8' >Radno vrijeme (8h)</option> </select><label for='pay"+br+"' class='label-pay'>Neto plata:</label><input type='number' onKeyPress='if(this.value.length==7) return false;' onkeydown='javascript: return event.keyCode === 8 || event.keyCode === 46 ? true : !isNaN(Number(event.key))' class='pay' id='pay"+br+"' required='required'><label for='pay' class='km-pay' id='km-pay"+br+"'>KM  <img  onmouseenter='hover("+br+")' onmouseout='ukini("+br+")'  src='img/Path 469.svg' alt='info1' id='img-option' class='img-option'> </label><label class='alert' id='alert"+br+"'></label>";
    list.appendChild(entry);}
};



function hover(x) {
    var sati = document.getElementById('hours'+br).value;
    if (sati==4) {document.getElementById('tooltip').innerText='Iznos najniže plate u Republici Srpskoj za pola radnog vremena je 260,00 KM.';
                    document.getElementById("tooltip").style.display='block';
                  } 
    else
    {document.getElementById('tooltip').innerText='Iznos najniže plate u Republici Srpskoj za puno radno vrijeme  je 520,00 KM.';
    document.getElementById("tooltip").style.display='block';
                    }
}


function ukini() {
    document.getElementById("tooltip").style.display='none';
}

</script>



</head>
<body onload="check(); handleClick();">
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


<div id="article-workers">
    <h1>Zaposleni</h1>
    <p>Unesite informacije o radnicima.</p>
    <p id="p-second">Preduzetničku djelatnost obavljate kao:</p>

</div>

<div id="options-workers">
    
    <form class="option" action="/kalkulator/prihodiSP.htm" onSubmit="return validateForm()"  method="post">

        
            <label for="option1" class="container-radio">
                
                    <input type="radio" name="myRadios" id="option1" onclick="handleClick();" value="1" />
                    <span id="osnovno">Osnovno zanimanje</span>
                    <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
                <span class="tooltiptext">Fizičko lice koje nije u radnom odnosu obavlja
                    preduzetničku djelatnost kao osnovno zanimanje.</span></div>
            <span class="checkmark"></span>
            </label><br>
        

        
            <label for="option2" class="container-radio">
                
                    <input type="radio" name="myRadios" id="option2" onclick="handleClick();" value="dopunsko_zanimanje" />
                    <span id="dopunsko">Dopunsko zanimanje</span>
                    <div class="tooltip1"><img src="img/Path 469.svg" alt="info2" class="img-option">
                    <span class="tooltiptext">Fizičko lice može obavljati preduzetničku djelatnost kao dopunsko
                         zanimanje isključivo ličnim radom, najduže do polovine sedmičnog punog radnog vremena, 
                         pod uslovom da je u radnom odnosu kod drugog poslodavca sa punim radnim vremenom.
                    </span></div>
            <span class="checkmark"></span>
            </label><br>
        

        
            <label for="option3" class="container-radio">
                    <input type="radio" name="myRadios" id="option3" onclick="handleClick();" value="dodatno-zanimanje" />
                    <span id="dodatno">Dodatno zanimanje</span>
                    <div class="tooltip1"><img src="img/Path 469.svg" alt="info3" class="img-option">
                    <span class="tooltiptext">Fizičko lice koje je u radnom odnosu na nekim drugim poslovima, 
                        student, korisnik penzije, kao i u drugim slučajevima kada posebnim propisima nije
                         drugačije uređeno, može kao dodatno zanimanje da registruje preduzetničku djelatnost 
                         ako zaposli lice koje ispunjava uslove za obavljanje tražene djelatnosti.
                    </span></div>
            <span class="checkmark"></span>
        </label>
        



<div class="insert-over">
   <!-- <form class="option11" action="" onSubmit="return validateForm()" > --> 
    <ol id="insert"></ol>   
	<div id="submit"></div>
   <!-- </form >-->
</div>
<span class='tooltip' id='tooltip'></span>

<!---BACKEND----podaci spremljeni u value odvojeni sa #-->
<input type="hidden" id="radnoVrijeme" name="radnoVrijeme"></input>
<input type="hidden" id="plate" name="plate"></input>  
<input type="hidden" id="djelatnost" name="djelatnost" value="${djelatnost}"></input>
<input type="hidden" id="opcija" name="opcija"></input>
<!---BACKEND-->    


    </form>
</div>





 <!---footer-->
 <div class="footer">
          
    <div class="footer-list">

        <div class="broj" id="active" >1</div><p>Oblik</p>
        <span></span>
    <div class="broj" id="active" >2</div><p>Djelatnost</p>
        <span></span>
    <div class="broj" id="active">3</div><p>Zaposleni</p>
        <span></span>
    <div class="broj">4</div><p>Prihod</p>

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

    <script>
        function check() {
            document.getElementById("option1").checked = true;
}
    </script>


    <script src="js/script.js"></script>



    
</body>
</html>
