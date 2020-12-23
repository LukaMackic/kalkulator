<%-- 
    Document   : rezultati
    Created on : 22-Dec-2020, 11:24:05
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Rezultati</title>
  <link rel="stylesheet" href="css/style-rezultati.css">



  <script>
    function hover() {
        var oblik = document.getElementById('oblik_registracije');
        if (oblik.innerHTML==="Društvo sa ograničenom odgovornošću (D.O.O.)") 
        {document.getElementById('tooltip-republicka').innerText='Posebna republička taksa se plaća na onu djelatnost za koju je dobijeno odobrenje za rad, a ako ima registrovano više djelatnosti, onda se plaća na onu djelatnost od koje je u prethodnoj poslovnoj godini ostvario najveći prihod. Posebna republička taksa se može platiti iz dva dijela. Preduzetnici koji su registrovani u toku godine plaćaju iznos republičke takse od 20,00 KM.';  
          document.getElementById('tooltip-sume').innerText='Zakon o šumama (“Službeni glasnik Republike Srpske”, broj 75/08, 60/13). Naknada za unapređenje opštekorisnih funkcija šuma se obračunava na osnovicu koju čini ukupan prihod, a obračunava se po stopi od 0,07% na navedenu osnovicu.';
          document.getElementById('tooltip-dobit').innerText='Porez na dobit se obračunava na razliku između ostvarenog ukupnog prihoda i ukupnog rashoda jednog privrednog društva u poslovnoj godini. Stopa poreza na dobit za pravna lica iznosi 10%.'; 
          document.getElementById('tooltip-vodne').innerText='Zakon o vodama (“Službeni glasnik Republike Srpske”, broj 50/06, 92/09, 121/12). Odluku o stopama posebnih vodnih naknada pronaći ćete u Službenom glasniku Republike Srpske broj 53/11.';
          document.getElementById('tooltip-protivpozarna').innerText='Zakon o zaštiti od požara (“Službeni glasnik Republike Srpske”, broj 71/12, 90/16). Protivpožarna naknada se obračunava na osnovicu koju čini ukupan prihod, a iznos naknade se obračunava po stopi od 0,04% na navedenu osnovicu. Npr: za ukupan godišnji prihod od 50.000 KM iznos naknade bi bio 20,00 KM.';
          document.getElementById('tooltip-privredna-komora').innerText='Članovi Privredne komore Republike Srpske plaćaju godišnju članarinu po stopi od 0,02% do 0,05%, zavisno od ukupnog prihoda iskazanog u Bilansu uspjeha za prethodnu godinu.'; 
          document.getElementById('tooltip-vanjskotrgovinska').innerText='Članarinu Vanjskotrgovinskoj komori Bosne i Hercegovine u obavezi su plaćati privredna društva registrovana u Bosni i Hercegovini za obavljanje poslova u inostranstvu. Većina djelatnosti plaća minimalnu godišnju članarinu u iznosu od 240,00 KM, odnosno 60,00 KM kvartalno.';
          document.getElementById('obavlja-se-kao').style.display="none"; 
          document.getElementById('godisnji-prihod').style.display="none";
          document.getElementById('status-preduzetnika').style.display="none"; 
          document.getElementById('klasifikacija-pravnog-lica').style.display="tabel-row";
          document.getElementById('porez-na-dohodak').style.display="none";
          document.getElementById('zanatska').style.display="none";
        }
        if (oblik.innerHTML==="Samostalni preduzetnik (S.P.)")
        {document.getElementById('tooltip-republicka').innerText='Posebna republička taksa se plaća na onu djelatnost za koju je dobijeno odobrenje za rad, a ako ima registrovano više djelatnosti, onda se plaća na onu djelatnost od koje je u prethodnoj poslovnoj godini ostvario najveći prihod. Posebna republička taksa se može platiti iz dva dijela. Pravno lice i poslovna jedinica koji su registrovani u toku godine plaćaju iznos republičke takse od 100,00 KM.';
        document.getElementById('tooltip-zanatska').innerText='Preduzetnici postaju članovi Komore upisom u registar preduzetnika. Članarinu Zanatsko-preduzetničkoj komori RS uplaćuju svi registrovani preduzetnici u osnovnoj, dopunskoj i dodatnoj djelatnosti u mjesečnom iznosu u visini od 2,00 KM, a koja na godišnjem nivou iznosi 24,00 KM.';  
        document.getElementById('porez-dobit').style.display="none";
        document.getElementById('porez-sume').style.display="none";
        document.getElementById('vodne').style.display="none";
        document.getElementById('protivpozarna').style.display="none";
        document.getElementById('privredna-komora').style.display="none";
        document.getElementById('vanjskotrgovinska-komora').style.display="none";
        document.getElementById('obavlja-se-kao').style.display="table-row"; 
        document.getElementById('godisnji-prihod').style.display="table-row";
        document.getElementById('status-preduzetnika').style.display="table-row";
        document.getElementById('klasifikacija-pravnog-lica').style.display="none";
        document.getElementById('porez-na-dohodak').style.display="tabel-row"; 
    }
    
                      }
    function hover2() {
        var prihod = document.getElementById('godisnji_prihod');
        if (prihod.innerHTML==="Do 50.000 KM") 
          {document.getElementById('tooltip-porez-na-dohodak').innerText='Godišnji porez malog preduzetnika obračunava se po stopi od 2% na ukupno ostvareni prihod malog preduzetnika. Mali preduzetnik jeste fizičko lice koje obavlja samostalnu djelatnost, ne zapošljava više od tri radnika i ukupan godišnji prihod po osnovu obavljanja djelatnosti ne prelazi iznos od 50.000 KM.';  
              }
        if (prihod.innerHTML==="Preko 50.000 KM")
          {document.getElementById('tooltip-porez-na-dohodak').innerText='Poreska osnovica za obračun poreza na dohodak od samostalne djelatnosti predstavlja razliku između prihoda i rashoda nastalih obavljanjem samostalne djelatnosti u poreskom periodu. Stopa poreza na dohodak iznosi 10%.';
              }

                  }


    </script>


</head>

<body onload="hover(); hover2(); ">
  <nav>
    <nav>
      <div class="logo">
        <a href="index.html" id="logo1">
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
        <li><a href="o-nama.html">O nama</a></li>
        <li><a href="https://www.smartoffice.ba/kontakt">Kontakt</a></li>
        <li><a href="https://www.smartoffice.ba/" class="navbutton">www.smartoffice.ba <img
              src="img/ic_arrow_forward_24px.svg" alt="arrow24"></a></li>
      </ul>
      <div class="burger">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
      </div>

    </nav>
  </nav>
  <!-- End of navigation -->


    <div class="article">

      <h1>Pregled</h1>

    </div>

  <div class="over">
    <table class="rezultati">
      <tr >
        <td class="red-prvi">Oblik registracije</td>
        <td class="red-drugi" id="oblik_registracije" value="">${oblik}</td>
      </tr>
       
      <tr>
        <td class="red-prvi">Osnovna djelatnost</td>
        <td class="red-drugi" id="osnovna_djelatnost">${djelatnost}</td>
      </tr>
      <tr id="obavlja-se-kao">
        <td class="red-prvi">Preduzetnička djelatnost se obavlja kao</td>
        <td class="red-drugi" id="preduzetnicka_djelatnost"></td>
      </tr>
      <tr id="godisnji-prihod">
        <td class="red-prvi">Planirani godišnji prihod</td>
        <td class="red-drugi" id="godisnji_prihod">Do 50.000 KM</td>
      </tr>
      <tr id="status-preduzetnika">
        <td class="red-prvi">Status preduzetnika</td>
        <td class="red-drugi" id="status_preduzetnika"></td>
      </tr>
      <tr id="klasifikacija-pravnog-lica">
        <td class="red-prvi">Klasifikacija pravnog lica</td>
        <td class="red-drugi" id="klasifikacija_pravnog_lica">${prihodi}</td>
      </tr>
      <tr>
        <td class="red-prvi">Broj zaposlenih</td>
        <td class="red-drugi" id="broj_zaposlenih">${brojZaposlenih}</td>
      </tr>
    </table>
</div>




    <div class="article">

      <h1>Mjesečni troškovi za zaposlene</h1>

    </div>

    <div class="over" id="over-m-prihodi">
      
    </div>



    


    <div class="article">

      <h1>Godišnji troškovi i obaveze</h1>

    </div>

    <div class="over">
      <table class="rezultati">
        <tr >
          <td class="red-prvi">Komunalna taksa
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext">Komunalna taksa se plaća za isticanje poslovnog imena i određuje se na nivou opštine.
                 Plaća se u godišnjem iznosu srazmjerno broju mjeseci u kojima se obavlja djelatnost i može se platiti iz dva dijela. 
                 Obaveza plaćanja komunalne takse počinje teći od dana dodjeljivanja jedinstvenog identifikacionog broja od nadležne 
                 jedinice Poreske uprave.</span></div>

          </td>
          <td class="red-drugi" id="komunalna_taksa">${komunalna}</td>
        </tr>
  
        <tr>
          <td class="red-prvi">Republička taksa
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option" id="img-republicka">
              <span class="tooltiptext" id="tooltip-republicka"></span></div>
          </td>
          <td class="red-drugi" id="republicka_taksa">${republicka}</td>
        </tr>
        <tr id="zanatska">
          <td class="red-prvi" >Članarina zanatsko-preduzetničke komore Republike Srpske
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option" id="img-zanatska">
              <span class="tooltiptext" id="tooltip-zanatska"></span></div>
          </td>
          <td class="red-drugi" id="clanarina_zanatsko_preduzetnicke_komore"></td>
        </tr>
       
        <tr id="porez-dobit">
          <td class="red-prvi">Porez na dobit
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext" id="tooltip-dobit"></span></div>
          </td>
          <td class="red-drugi" id="porez_na_dobit">10% od ukupne dobiti</td>
        </tr> 
        <tr id="porez-na-dohodak">
          <td class="red-prvi">Porez na dohodak
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext" id="tooltip-porez-na-dohodak"></span></div>
          </td>
          <td class="red-drugi"></td>
        </tr>
        <tr id="porez-sume">
          <td class="red-prvi">Naknade za šume 
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext" id="tooltip-sume"></span></div>
          </td>
          <td class="red-drugi" id="porez_sume">0,07% od ukupnog prihoda</td>
        </tr>
        <tr id="protivpozarna">
          <td class="red-prvi">Protivpožarna naknada 
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext" id="tooltip-protivpozarna"></span></div>
          </td>
          <td class="red-drugi" id="protivpozarna_naknada">0,04% od ukupnog prihoda</td>
        </tr>
        <tr>
          <td class="red-prvi">Naknada za protivgradnu zaštitu 
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext">Zakon o protivgradnoj zaštiti (“Službeni glasnik Republike Srpske”, broj  39/03, 110/08).
                Naknadu za protivgradnu zaštitu plaćaju: 1. Preduzeća čija je djelatnost osiguranje i reosiguranje imovine i lica, a koja su obveznici naknade za protivgradnu zaštitu, obračunavaju osnovicu koju čini ukupan prihod po završnom računu, te plaćaju iznos naknade obračunate po stopi od 0,25% na navedenu osnovicu; 2. Ostala fizička i pravna lica, vlasnici ili korisnici zemljišnih površina, obveznici naknade za protivgradnu zaštitu, obračunavaju osnovicu koju čini broj hektara registrovanog obradivog poljoprivrednog zemljišta (upisanog u registar PP gazdinstva), a iznos naknade se dobije kada se pomnoži broj hektara obradivog poljoprivrednog zemljišta sa 1,80 KM.
                </span></div>
          </td>
          <td class="red-drugi">0,25% od ukupnog prihoda</td>
        </tr>
        <tr id="vodne">
          <td class="red-prvi">Vodne naknade 
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext" id="tooltip-vodne"></span></div>
          </td>
          <td class="red-drugi" id="vodne_naknade">* u zavisnosti od djelatnosti</td>
        </tr>
        <tr id="privredna-komora">
          <td class="red-prvi">Članarina Privredne komore RS
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext" id="tooltip-privredna-komora"></span></div>
          </td>
          <td class="red-drugi"id="clanarina_privredne_komore">0,02% do 0,05% od ukupnog prihoda</td>
        </tr>
        <tr id="vanjskotrgovinska-komora">
          <td class="red-prvi">Članarina Vanjskotrgovinske komore BIH
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext" id="tooltip-vanjskotrgovinska"></span></div>
          </td>
          <td class="red-drugi" id="clanarina_vanjskotrgovinske_komore">0,03% od ukupnog prihoda</td>
        </tr>
      </table>
  </div>
    




    <div class="article">

      <h1>Ostali troškovi</h1>

    </div>

    <div class="over">
      <table class="rezultati">
        <tr >
          <td class="red-prvi">Doprinosi za rehabilitaciju i zapošljavanje invalida 
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
            <span class="tooltiptext">Poslodavac koji ima do 16 zaposlenih radnika dužan je svakog mjeseca prilikom 
              isplate plata uplaćivati na račun javnih prihoda Republike Srpske poseban doprinos u visini 0,1% od iznosa 
              isplaćene mjesečne bruto plate svih zaposlenih. Poslodavac koji ispunjava uslove iz člana 26. stava 1. Zakona
               o profesionalnoj rehabilitaciji, osposobljavanju i zapošljavanju invalida oslobođen je plaćanja ovih doprinosa.
            </span></div></td>
          <td class="red-drugi" id="doprinosi-za-rehabilitaciju"></td>
        </tr>
  
        <tr>
          <td class="red-prvi">Porez na prihod od kapitala
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext">Prihod od kapitala predstavlja prihod ostvaren izdavanjem u zakup ili
                 podzakup pokretne i nepokretne imovine, kao i kamata na zajam.  Ukoliko prostor za obavljanje
                  osnovne djelatnosti uzimate u zakup od fizičkog lica, dužni ste da platite porez na prihod od 
                  kapitala. Poreska osnovica za obračun poreza je iznos zakupa nepokretne, odnosno pokretne imovine, 
                  koji se dobija kada se od ukupnog iznosa odbiju normirani troškovi u visini od 20% od tog prihoda. 
                  Stopa poreza je 10%. Ukoliko je zakupodavac pravno lice, niste u obavezi da plaćate porez na prihod od kapitala.
              </span></div>
          </td>
          <td class="red-drugi" id="porez-na-prihod-kapitala"></td>
        </tr>
        <tr>
          <td class="red-prvi">Knjigovodstvene usluge
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext">Svako pravno lice u obavezi je da vodi poslovne knjige preduzeća,
                 te sačinjava godišnje finansijske izvještaje. Troškovi knjigovodstvenih usluga zavise od mnogo
                  faktora, te je nemoguće napisati okvirnu cijenu za jedno preduzeće.
              </span></div>
          </td>
          <td class="red-drugi" id="knjigovodstvene-usluge"></td>
        </tr>
        <tr>
          <td class="red-prvi">Oprema, roba, materijali i ostale usluge
            <div class="tooltip1"><img src="img/Path 469.svg" alt="info1" class="img-option">
              <span class="tooltiptext">Troškovi nabavke osnovne opreme, robe, materijala i drugih usluga su
                 individualni te je iste nemoguće navesti. 
              </span></div>
          </td>
          <td class="red-drugi" id="oprema-roba"></td>
        </tr>
      </table>
  </div>

  <div id="napomena">
    NAPOMENA: Kalkulator je informativnog karaktera, te su svi podaci podložni promjenama u 
    zavisnosti od odabira osnovne djelatnosti, prijavljenih radnika, te ostalih faktora koji 
    mogu uticati na povećanje ili smanjenje datih troškova. Vaš knjigovodstveni biro će vas 
    detaljno upoznati sa svim troškovima poslovanja.
  </div>

  <div class="preuzmi">

    <input type="submit" class="yellow" id="button-preuzmi" value="Preuzmi (.pdf)">
    <input type="submit" class="yellow" id='button-posalji' value="Pošalji na email">
    <input type="submit" class="yellow" id='button-stampanje' value="Štampanje">


  </div>








  <div class="article">
    <h1 class="h-margin">Korisne informacije</h1>
    <h3 > Pogledajte korisne članke sa našeg bloga</h3>
  </div>

  <div class="grid-container-blog">
    <div class="grid-item-blog"  onclick="window.open('https://www.smartoffice.ba/blog/46-registracija-firme-vodic-za-nove-preduzetnike')" style="cursor: pointer;">
        <img src="img/Vodi-za-preduzetnike.jpg" alt="blog1" width="100vw">
        <h2>Vodič za nove preduzetnike</h2>
        <p>Sve što treba znati o registraciji privredne djelatnosti u Republici Srpskoj.</p>
    </div>
    <div class="grid-item-blog" onclick="window.open('https://www.smartoffice.ba/blog/76-kako-i-zasto-registrovati-firmu-u-republici-srpskoj')" style="cursor: pointer;">
        <img src="img/Registracija_firme_za_strane_drzavljane.jpg" alt="blog2" width="100vw">
        <h2>Vodič za strane državljane</h2>
        <p>Kako i zašro registrovti firmu u Republici Srpskoj, BiH?</p>
    </div>
    <div class="grid-item-blog" onclick="window.open('https://www.smartoffice.ba/registracija-firme-cesta-pitanja')" style="cursor: pointer;">
        <img src="img/kako-zapoceti-freelance-karijeru-full.jpg" alt="blog3" width="100vw">
        <h2>Česta pitanja o registraciji firme</h2>
        <p>Najčešće postavljena pitanja.</p>
    </div>
    <div class="grid-item-blog" onclick="window.open('https://www.smartoffice.ba/blog/85-od-freelancera-do-samostalnog-preduzetnika')" style="cursor: pointer;">
        <img src="img/Registracija_samostalnog_preduzetnika.jpg" alt="blog4" width="100vw">
        <h2>Od freelancera do samostalnog preduzetnika!</h2>
        <p>Kako da legalizujete vaše freelance poslovanje.</p>
    </div>
    
    
  </div>

  <div id="article2">
    <h1>
        Dobre vijesti za buduće preduzetnike!
    </h1>

    <p>
        U cilju da svim kompanijama, startupima i freelancerima olakšamo početak poslovanja
        osmislili smo usluge koje pružaju sve što im je potrebno, po pristupačnim cijenama.
        Registrujte sjedište vaše kompanije u centru Banja Luke već od 90KM mjesečno.
    </p>


    <div id="buttons">
        <div id="link1">
            <a link href="https://www.smartoffice.ba/clanstvo">Paketi i cijene <img src="img/ic_arrow_forward_24px.png" alt="arrow"></a>
        </div>

        <div id="link2">
            <a href="https://www.smartoffice.ba/kontakt">Konsultacije</a>

        </div>
    </div>

</div>

     <!---footer-->
  <div class="container"></div>
  <footer>

      <section class="ft-legal">
          <ul class="ft-legal-list">
              <li>
                  <p>
                      <font color="#999999">© 2020 Smart Office Banja Luka.</font> Privatnost podataka.
                  </p>
              </li>
              <li>
                  <a href="index.html" class="ft-2"><img src="img/twologo.svg" alt="logo"></a>
              </li>
          </ul>
      </section>
  </footer>

        <script src="js/script.js"></script>




        <script>
          var a = document.getElementById("broj_zaposlenih").innerHTML;
           var inside = document.getElementById("over-m-prihodi");
           br=-1;
           for(i=0;i<a;i++)
           {
             var div = document.createElement('div');
             br++;
             div.innerHTML = "<table class='rezultati' id='mjesecni_troskovi'><tr> <td class='red-prvi' id='radnik' >Radnik "+(br+1)+"</td><td class='red-drugi'></td></tr><tr><td class='red-prvi'>Neto plata (isplata na račun)</td><td class='red-drugi' id='neto-plata"+br+"'></td></tr><tr><td class='red-prvi'>Doprinosi na bruto platu <div class='tooltip1'><img src='img/Path 469.svg' alt='info1' class='img-option'><span class='tooltiptext'>Uključuje: Doprinos za PIO - stopa 18,50% na bruto platu; Doprinos na zdravstveno osiguranje - stopa 12,00% na bruto platu; Doprinos za zapošljavanje -stopa 0,60% na bruto platu; Doprinos za dječiju zaštitu - stopa 1,70% na bruto platu.</span></div></td><td class='red-drugi' id='doprinosi-na-bruto"+br+"'></td></tr><tr><td class='red-prvi'>Porez na lični dohodak<div class='tooltip1'><img src='img/Path 469.svg' alt='info1' class='img-option'><span class='tooltiptext'>Porez na lični dohodak fizičkih lica plaća se po stopi od 10% na osnovicu koju čini neto plata umanjena za lični odbitak (500,00 KM).</span></div></td><td class='red-drugi' id='porez-na-licni-dohodak"+br+"'></td></tr><tr><td class='red-prvi' style='font-weight: 700;' >Bruto plata</td><td class='red-drugi' id='bruto-plata"+br+"'style='font-weight: 700;'></td></tr></table>";
             inside.appendChild(div);  
           }
           if (br>0){
             var ukupno = document.createElement('div');
             ukupno.innerHTML = "<table class='rezultati' id='tabela_ukupni'><tr><td class='red-prvi'>Ukupni troškovi za sve plate</td><td class='red-drugi' id='ukupni_troskovi' value=''>${ukupneplate} KM</td></tr>";
             inside.appendChild(ukupno);

           }
           </script>

<script>
             const neto1="${netoplate}".split('#');
             for(var i=0;i<neto1.length;i++)
            {
              const netotu1=document.getElementById('neto-plata'+i);


              netotu1.appendChild(document.createTextNode(neto1[i]+" KM"));
        }
           </script>


<script>
  const neto2="${doprinosi}".split('#');
  for(var i=0;i<neto2.length;i++)
 {
   const netotu2=document.getElementById('doprinosi-na-bruto'+i);
   netotu2.appendChild(document.createTextNode(neto2[i]+" KM"));
}
</script>


<script>
  const neto3="${poreziLD}".split('#');
  for(var i=0;i<neto3.length;i++)
 {
   const netotu3=document.getElementById('porez-na-licni-dohodak'+i);


   netotu3.appendChild(document.createTextNode(neto3[i]+" KM"));
}
</script>


<script>
  const neto4="${brutoplate}".split('#');
  for(var i=0;i<neto4.length;i++)
 {
   const netotu4=document.getElementById('bruto-plata'+i);


   netotu4.appendChild(document.createTextNode(neto4[i]+" KM"));
}
</script>





</body>

</html>
