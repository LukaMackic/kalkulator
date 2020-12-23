<%-- 
    Document   : djelatnosti
    Created on : 17-Dec-2020, 14:27:17
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style-djelatnosti.css">
    <title>Osnovna Djelatnost</title>

<script src="js/dropdown.js"></script>


<script>

function myFunction() {
        document.getElementById('filter').innerHTML="";
        var match = document.getElementById('myInput').value;
        var djelatnosti =document.getElementById("djelatnost");
        var listItem = djelatnosti.getElementsByTagName("li");
        var list = document.createElement('div');
        for (var i=0; i < listItem.length; i++) {
                if(listItem[i].innerHTML.toLowerCase().startsWith(match.toLowerCase())){
                var entry = document.createElement('label');
               
                entry.className += 'container-radio';
                entry.innerHTML=listItem[i].innerHTML + "<input type='radio' value='"+listItem[i].innerHTML+"' id='"+listItem[i].innerHTML+"' name='djelatnost'><span class='checkmark'></span>";
                list.appendChild(entry); 
                }
                if(match==""){
                document.getElementById('filter').style.display='none';
                document.getElementById('dropcon2').style.display='block'; }
                else {document.getElementById('dropcon2').style.display='none';
        document.getElementById('filter').style.display='block';}
        }
        document.getElementById('filter').appendChild(list);
        
 }  
            
        
        </script>
<style>
    
    #filter label {
    display: block;
}
 .container-radio{    margin: 0;  }
 #filter::-webkit-scrollbar {
    width: 7px;

  }
#filter::-webkit-scrollbar-track {
    box-shadow: inset 0 0 5px #FFF; 
    border-radius: 20px;

  }
   

  #filter::-webkit-scrollbar-thumb {
    background: #999999; 
    border-radius: 20px;
  }
  
  #filter::-webkit-scrollbar-thumb:hover {
    background: #999999; 
  }
   #button-submit {
    background: url("img/ic_arrow_forward_24px\ \(1\).svg") 160px center   no-repeat;
    background-color:  #3EC300;
    box-shadow: 0px 10px 20px #3EC30080;
    color:#FFF;
    font-size: 20px !important;
    text-align: center;
    border-radius: 33px;
    width:280px;
    height: 61px;
    margin: 20px auto;
    font-size: 16px;
    font-weight: 600;
    border:none;
    cursor: pointer;
    display:block;
    margin-bottom: 5rem;
    padding-right: 22px;
}
.select:checked {
    font-weight: 700;
}
</style>


</head>

<body style=" background: #F5F5F5;">

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

            <li><a href="https://www.smartoffice.ba/" class="navbutton">www.smartoffice.ba</a></li>
        </ul>
        <div class="burger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>

    </nav>
    <!-- End of navigation -->
    <!-- dropdown menu -->
    <!-- Article -->
    
    <div id="article" >
        <h1>Osnovna Djelatnost</h1>
        <p>Kojom djelatnošću se planirate baviti?
        </p>
    </div>




    
    <form action="/kalkulator/zaposleniSP.htm"  method="post">

      
        <div class="dropcon1">
            <input type="text" id="myInput" onkeyup="myFunction();" placeholder="Pretraga..." title="Type in a name">
            <img src="img/search-black-18dp.svg" id="searchimg" alt="slika-search">
        </div>
        
        <ul id="filter" style = "   margin:0 auto;
    background: #FFFFFF;
    padding: 20px 20px;
    width:700px;
    font-size: 19px;
    font-weight: 300;
    margin-bottom: 3rem;
    height:300px;
    overflow-y: scroll;
    border-radius: 6px;
    box-shadow: 0px 5px 15px #0000000D;
    display:none;">

        </ul>
        
        <ul id="djelatnost">
          
        </ul>

        <div id="dropcon2">

            <div id="drop-close">
        
            
            <div id="selected1" class="selected" onclick="show1()">
                   Poljoprivreda, šumarstvo i ribolov 
            </div>

            <div id="select-box1" class="select-box">
                
            </div>
                
                
            <div id="selected3" class="selected" onclick="show3()">
                    Prerađivačka industrija
            </div>

            <div id="select-box3" class="select-box">
               
            </div>

            
            <div id="selected4" class="selected" onclick="show4()">
                    Proizvodnja i snabdijevanje električnom energijom, plinom, parom i klimatizacijom
            </div>

            <div id="select-box4" class="select-box">
               
            </div>
                


            <div id="selected5" class="selected" onclick="show5()">
                    Snabdijevanje vodom; kanalizacija, upravljanje otpadom  i djelatnosti sanacije 
                    (remedijacije) životne sredine
            </div>

            <div id="select-box5" class="select-box">
            
            </div>

            
            <div id="selected6" class="selected" onclick="show6()">
                    Građevinarstvo
            </div>

            <div id="select-box6" class="select-box">
                
            </div>
            
            
            <div id="selected7" class="selected" onclick="show7()">
                    Trgovina na veliko i na malo; popravka motornih vozila i motocikala
            </div>

            <div id="select-box7" class="select-box">
                
            </div>

            
            <div id="selected8" class="selected" onclick="show8()">
                    Saobraćaj i skladištenje
            </div>

            <div id="select-box8" class="select-box">
                
            </div>
            
            
            <div id="selected9" class="selected" onclick="show9()">
                    Djelatnosti pružanja smještaja, pripreme i posluživanja hrane;<br> hotelijerstvo i ugostiteljstvo
            </div>
            <div id="select-box9" class="select-box">
                
            </div>
            
            
            <div id="selected10" class="selected" onclick="show10()">
                    Informacije i komunikacije
            </div>

            <div id="select-box10" class="select-box">
                
            </div>
            
            
            <div id="selected11" class="selected" onclick="show11()">
                    Finansijske djelatnosti i djelatnosti osiguranja
            </div>

            <div id="select-box11" class="select-box">
               
            </div>
            
            <div id="selected12" class="selected" onclick="show12()">
                    Poslovanje nekretninama
            </div>

            <div id="select-box12" class="select-box">
                
            </div>
            
            
            <div id="selected13" class="selected" onclick="show13()">
                    Stručne, naučne i tehničke djelatnosti
            </div>

            <div id="select-box13" class="select-box">
                
            </div>
            

            <div id="selected14" class="selected" onclick="show14()">
                    Administrativne i pomoćne uslužne djelatnosti
            </div>

            <div id="select-box14" class="select-box">
                
            </div>


            <div id="selected16" class="selected" onclick="show16()">
                    Obrazovanje
                </div>
            <div id="select-box16" class="select-box">
                
            </div>
           

           <div id="selected17" class="selected" onclick="show17()">
                    Djelatnosti zdravstvene zaštite i socijalnog rada
                </div>
            <div id="select-box17" class="select-box">
                
            </div>
            
            <div id="selected18" class="selected" onclick="show18()">
                    Umjetnost, zabava i rekreacija
            </div>
            <div id="select-box18" class="select-box">
                
            </div>
            

            <div id="selected19" class="selected" onclick="show19()">
                   Ostale uslužne djelatnosti
            </div>
            <div id="select-box19" class="select-box">
               
            </div>


        </div>
        
   </div> 
    <input style = 'background: url("img/ic_arrow_forward_24px\ \(1\).svg") 170px center   no-repeat;
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
    display:block;'  type="submit" id="button-submit" value="Dalje">
           </form>
    <script>           
         const listaA = "${podrucjeA}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerA = document.getElementById("select-box1");

        listaA.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('class',"select");
      
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerA.appendChild(childDiv);
 });

   </script>
        
          <script>           
         const listaC = "${podrucjeC}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerC = document.getElementById("select-box3");

        listaC.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerC.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaD = "${podrucjeD}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerD = document.getElementById("select-box4");

        listaD.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('class',"select");
      
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerD.appendChild(childDiv);
 });

   </script>
        
          <script>           
         const listaE = "${podrucjeE}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerE = document.getElementById("select-box5");

        listaE.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerE.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaF = "${podrucjeF}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerF = document.getElementById("select-box6");

        listaF.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerF.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaG = "${podrucjeG}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerG = document.getElementById("select-box7");

        listaG.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerG.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaH = "${podrucjeH}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerH = document.getElementById("select-box8");

        listaH.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerH.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaI = "${podrucjeI}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerI = document.getElementById("select-box9");

        listaI.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerI.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaJ = "${podrucjeJ}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerJ = document.getElementById("select-box10");

        listaJ.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerJ.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaK = "${podrucjeK}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerK = document.getElementById("select-box11");

        listaK.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerK.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaL = "${podrucjeL}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerL = document.getElementById("select-box12");

        listaL.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerL.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaM = "${podrucjeM}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerM = document.getElementById("select-box13");

        listaM.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerM.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaN = "${podrucjeN}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerN = document.getElementById("select-box14");

        listaN.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerN.appendChild(childDiv);
 });

   </script>
         
          <script>           
         const listaP = "${podrucjeP}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerP = document.getElementById("select-box16");

        listaP.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerP.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaQ = "${podrucjeQ}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerQ = document.getElementById("select-box17");

        listaQ.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerQ.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaR = "${podrucjeR}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerR = document.getElementById("select-box18");

        listaR.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerR.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaS = "${podrucjeS}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerS = document.getElementById("select-box19");

        listaS.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
    
        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);
                       
        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);
    
        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

    languageContainerS.appendChild(childDiv);
 });

   </script>
      
  <script>
      
        var lista = listaA.concat(listaC,listaD,listaE,listaF,listaG,listaH,listaI,listaJ,listaK,listaL,listaM,listaN,listaP,listaQ,listaR,listaS);
        const languageContainer = document.getElementById("djelatnost");
            
        lista.forEach( element => {
        const radioLi = document.createElement("li");
        radioLi.style.display="none";
        radioLi.appendChild(document.createTextNode(element));
        languageContainer.appendChild(radioLi);
             });
</script>  
        
                   

       

    <!-- end of dropdown -->

  <div class="footer">
          
        <div class="footer-list">

        <div class="broj" >1</div><p>Oblik</p>
            <span></span>
        <div class="broj" >2</div><p>Djelatnost</p>
            <span></span>
        <div class="broj">3</div><p>Zaposleni</p>
            <span></span>
        <div class="broj">4</div><p>Prihod</p>

        </div> 

    </div>
         <!---footer-->


        <script src="js/script.js"></script>

</body>

</html>