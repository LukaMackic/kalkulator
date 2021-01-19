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
                document.getElementById('filter').innerHTML="<div id='rezultati'>Rezultati:</div>";
                var match = document.getElementById('myInput').value;
                var djelatnosti =document.getElementById("djelatnost");
                var listItem = djelatnosti.getElementsByTagName("li");
                var list = document.createElement('div');
            for (var i=0; i < listItem.length; i++) {
                txtValue = listItem[i].textContent || listItem[i].innerText;
                         if(txtValue.toLowerCase().includes(match.toLowerCase())){
                      var entry = document.createElement('label');
                      entry.className += 'container-radio';
                    entry.innerHTML="<input type='radio' value='"+listItem[i].innerHTML+"' id='"+listItem[i].innerHTML+" autocomplete='off' name='djelatnost'><span class='checkmark'></span><span>"+listItem[i].innerHTML+"</span>"; 
                     list.appendChild(entry); 
                     document.getElementById('filter').style.display="block";
                     document.getElementById('dropcon2').style.display='none';
                 }
                 if (match==""){
                     
                    document.getElementById('filter').style.display='none';
                    document.getElementById('dropcon2').style.display='block';
                    if (document.getElementById("button-submit").disabled == false){
                            document.getElementById("button-submit").disabled = true;
                            document.getElementById('button-submit').style.backgroundColor="#D1D1D1";
                            document.getElementById('button-submit').style.boxShadow="none";
                        }
                 }


            }
            document.getElementById('filter').appendChild(list);

            }
 
            
        
</script>


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

            <li id="slink"><a href="https://www.smartoffice.ba/" class="navbutton">www.smartoffice.ba</a></li>
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




    
    <form action="/kalkulator/zaposleniDOO.htm"  method="post">

      
        <div class="dropcon1">
            <input type="text" id="myInput" onkeyup="myFunction();" placeholder="Pretraga..." title="Type in a name">
            <img src="img/search-black-18dp.svg" id="searchimg" alt="slika-search">
        </div>
        
        <ul id="filter" onclick="validate2()">

        </ul>
        
        <ul id="djelatnost">
          
        </ul>

        <div id="dropcon2">

            <div id="drop-close">
        
            
            <div id="selected1" class="selected" onclick="show1()">
                  <p>  Poljoprivreda, šumarstvo i ribolov</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img1" class="img-arrow" > 
            </div>

            <div id="select-box1" class="select-box">
                
            </div>



            
            <div id="selected2" class="selected" onclick="show2()">
                   <p> Vađenje ruda i kamena</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img2" class="img-arrow" >
            </div>

            <div id="select-box2" class="select-box">
                
    
            </div>

            
            <div id="selected3" class="selected" onclick="show3()">
                  <p>  Prerađivačka industrija</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img3" class="img-arrow" >
            </div>

            <div id="select-box3" class="select-box">
               
            </div>
            
            
            
            <div id="selected4" class="selected" onclick="show4()">
                   <p> Proizvodnja i snabdijevanje električnom energijom, plinom, parom i klimatizacija</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img4" class="img-arrow" >
            </div>

            <div id="select-box4" class="select-box">
                
            </div>


            <div id="selected5" class="selected" onclick="show5()">
                   <p> Snabdijevanje vodom; kanalizacija, upravljanje otpadom  i djelatnosti sanacije 
                    (remedijacije) životne sredine</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img5" class="img-arrow" >
            </div>

            <div id="select-box5" class="select-box">
            
            </div>

            
            <div id="selected6" class="selected" onclick="show6()">
                   <p> Građevinarstvo</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img6" class="img-arrow" >
            </div>

            <div id="select-box6" class="select-box">
                
            </div>
            
            
            <div id="selected7" class="selected" onclick="show7()">
                   <p> Trgovina na veliko i na malo; popravka motornih vozila i motocikala</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img7" class="img-arrow" >
            </div>

            <div id="select-box7" class="select-box">
                
            </div>

            
            <div id="selected8" class="selected" onclick="show8()">
                   <p> Saobraćaj i skladištenje</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img8" class="img-arrow" >
            </div>

            <div id="select-box8" class="select-box">
                
            </div>
            
            
            <div id="selected9" class="selected" onclick="show9()">
                   <p> Djelatnosti pružanja smještaja, pripreme i posluživanja hrane;<br> hotelijerstvo i ugostiteljstvo</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img9" class="img-arrow" >
            </div>
            <div id="select-box9" class="select-box">
                
            </div>
            
            
            <div id="selected10" class="selected" onclick="show10()">
                  <p>  Informacije i komunikacije</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img10" class="img-arrow" >
            </div>

            <div id="select-box10" class="select-box">
                
            </div>
            
            
            <div id="selected11" class="selected" onclick="show11()">
                  <p>  Finansijske djelatnosti i djelatnosti osiguranja</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img11" class="img-arrow" >
            </div>

            <div id="select-box11" class="select-box">
               
            </div>
            
            <div id="selected12" class="selected" onclick="show12()">
                   <p> Poslovanje nekretninama</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img12" class="img-arrow" >
            </div>

            <div id="select-box12" class="select-box">
                
            </div>
            
            
            <div id="selected13" class="selected" onclick="show13()">
                   <p> Stručne, naučne i tehničke djelatnosti</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img13" class="img-arrow" >
            </div>

            <div id="select-box13" class="select-box">
                
            </div>
            

            <div id="selected14" class="selected" onclick="show14()">
                   <p> Administrativne i pomoćne uslužne djelatnosti</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img14" class="img-arrow" >
            </div>

            <div id="select-box14" class="select-box">
                
            </div>
            
            <div id="selected15" class="selected" onclick="show15()">
                    <p>Javna uprava i odbrana; obavezno socijalno osiguranje</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img15" class="img-arrow" >
            </div>
            
            <div id="select-box15" class="select-box">
                
            </div>
            

            <div id="selected16" class="selected" onclick="show16()">
                   <p> Obrazovanje</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img16" class="img-arrow" >
                </div>
            <div id="select-box16" class="select-box">
                
            </div>
           

           <div id="selected17" class="selected" onclick="show17()">
                   <p> Djelatnosti zdravstvene zaštite i socijalnog rada</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img17" class="img-arrow" >
                </div>
            <div id="select-box17" class="select-box">
                
            </div>
            
            <div id="selected18" class="selected" onclick="show18()">
                    <p>Umjetnost, zabava i rekreacija</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img18" class="img-arrow" >
            </div>
            <div id="select-box18" class="select-box">
                
            </div>
            

            <div id="selected19" class="selected" onclick="show19()">
                    <p>Djelatnosti domaćinstava kao poslodavca; djelatnosti domaćinstava <br>koja proizvode različitu robu i obavljaju različite usluge za sopstvenu upotrebu</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img19" class="img-arrow" >
            </div>
            <div id="select-box19" class="select-box">
               
            </div>
            

             <div id="selected20" class="selected" onclick="show20()">
                 <p> Djelatnosti eksteritorijalnih organizacija i organa</p> <img src="img/keyboard_arrow_down-black-18dp.svg" id="img20" class="img-arrow" >
            </div>
            <div id="select-box20" class="select-box">
               
            </div>

        </div>
        
   </div> 
        
        <input type="submit" id="button-submit" value="Dalje" disabled>
    
           </form>
    <script>           
         const listaA = "${podrucjeA}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerA = document.getElementById("select-box1");

        listaA.forEach( element => {
        const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

        languageContainerA.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaB = "${podrucjeB}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerB = document.getElementById("select-box2");

        listaB.forEach( element => {
          const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

        languageContainerB.appendChild(childDiv);
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

        languageContainerN.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaO = "${podrucjeO}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerO = document.getElementById("select-box15");

        listaO.forEach( element => {
          const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

        languageContainerO.appendChild(childDiv);
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
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
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

        languageContainerR.appendChild(childDiv);
 });

   </script>
          <script>           
         const listaT = "${podrucjeT}".replace("[", "").replace("]", "").split(";, ");
         const languageContainerT = document.getElementById("select-box19");

        listaT.forEach( element => {
          const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

        languageContainerT.appendChild(childDiv);
 });

   </script>
          <script>           
        const listaU = "${podrucjeU}".replace("[", "").replace("]", "").split(";, ");
        const languageContainerU = document.getElementById("select-box20");

        listaU.forEach( element => {
          const childDiv = document.createElement('div');
        const radioButton = document.createElement('input');
        const radioLabel = document.createElement("label");
        const radioSpan = document.createElement("span");
        const radioOne = document.createElement("span");

        radioLabel.setAttribute('class', "container-radio");
        radioSpan.setAttribute('class', "checkmark");
        radioButton.setAttribute('type', "radio");
        radioButton.setAttribute('id', element);

        radioButton.setAttribute('name', "djelatnost");
        radioButton.setAttribute('value', element);

        radioLabel.appendChild(radioButton);
        radioLabel.appendChild(radioOne);
        radioOne.appendChild(document.createTextNode(element));
        childDiv.appendChild(radioLabel);
        radioLabel.appendChild(radioSpan);

        languageContainerU.appendChild(childDiv);
 });

   </script>
  <script>
      
        var lista = listaA.concat(listaB,listaC,listaD,listaE,listaF,listaG,listaH,listaI,listaJ,listaK,listaL,listaM,listaN,listaO,listaP,listaQ,listaR,listaT,listaU);
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

        <div class="broj" id="active">1</div><p>Oblik</p>
            <span></span>
        <div class="broj" id="active" >2</div><p>Djelatnost</p>
            <span></span>
        <div class="broj">3</div><p>Zaposleni</p>
            <span></span>
        <div class="broj">4</div><p>Prihod</p>

        </div> 

    </div>
         <!---footer-->


        <script src="js/script.js"></script>
        <script>

    var inputs=document.querySelectorAll("input[type=radio]"),
        x=inputs.length;
    while(x--)
        inputs[x].addEventListener("change",function validate(){
      var check = document.forms[0];
      var a;
      for (a = 0; a<check.length; a++) {
        if (check[a].checked==true) {
          document.getElementById('button-submit').style.backgroundColor="#3EC300";
          document.getElementById('button-submit').style.boxShadow="0px 10px 20px #3EC30080";
          document.getElementById("button-submit").disabled = false;
        }

      }
    }

    ,0);

    function validate2(){
      var check2 = document.forms[0];
      var a2;
      for (a2 = 0; a2<check2.length; a2++) {
        if (check2[a2].checked==true) {
          document.getElementById('button-submit').style.backgroundColor="#3EC300";
          document.getElementById('button-submit').style.boxShadow="0px 10px 20px #3EC30080";
          document.getElementById("button-submit").disabled = false;
        }

      }
    }

  
    </script>

</body>

</html>