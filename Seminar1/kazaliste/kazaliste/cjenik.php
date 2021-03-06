<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8" />
      <title>THEATRON</title>
      <!--učitavanje fontova-->
      <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="css/normalize.css" />
      <link rel="stylesheet" href="css/grid.css" />
      <link rel="stylesheet" href="css/stil.css" />
      <link rel="stylesheet" href="fonts/css/fontello.css"/>
   </head>
   <body>
      <header class="site-header">
         <div class="row">
            <div class="column column-4">
               <h1 class="logo"><a href="index.php">THEATRON</a></h1>
            </div>

            <!--glavna navigacija-->
            <div class="column column-6">
               <nav class="main-navigation">
                  <ul>
                     <li><a href="predstave.php">Predstave</a></li>
                     <li><a href="cjenik.php">Cjenik</a></li>
                     <li><a href="onama.html">O nama</a></li>
                  </ul>
               </nav>
            </div>

            <!--jezici-->
            <div class="column column-2">
               <div class="lang">
                  <li>
                     <ul>
                  <li><a href="#">HR</a></li>
                  <li><a href="eng/cjenik_eng.php">ENG</a></li>
                  <ul>
                  </li>
               </div>
            </div>
         </div>
      </header>

      <section class="cjenik">
         <div class="row">
            <div class="column column-12 navigiraj">
               <a href="index.php">Početna <i class="icon-right-open"></i></a> Cjenik
            </div>

            <div class="column column-6">
               <h1>CJENIK</h1>
               <p> 
                  Puna cijena ulaznice iznosi 70,00 kn.
               </p>
               <p> Organizirana prodaja (više od 15 osoba):</p>
               <p> - tvrtke 45,00 kn<br>
                  - škole i domovi umirovljenika 35,00 kn<br>
                  I u sezoni 2015./16. nudimo Vam mogućnost individualne kupnje ulaznica po kliznim cijenama!
               </p>
               <p> Klizni cjenik - ukoliko je ulaznica kupljena:<br>
                  - 20 i više dana prije izvedbe - 40,00 kuna<br>
                  - 10 do 20 dana prije izvedbe - 50,00 kuna<br>
                  - manje od 10 dana prije izvebe - 70,00 kuna<br>
               </p>
            </div>
         </div>
      </section>
      <br><br><br><br>

      <section class="popusti">
         <div class="row">
            <div class="column column-6">
               <h1>Popusti:</h1>
               <p> Popusti se ostvaruju ISKLJUČIVO na blagajni kazališta Theatron, Ilica 88 uz predočenje odgovarajućih dokumenata. <br>
                  Studentski popust je moguće ostvariti uz predočenje ovjerenog indeksa za tekući semestar ili potvrde o statusu aktivnog studiranja dobivene na studomatu. <br>
                  Popust na ulaznice ostvaruju uz predočenje rješenja o mirovini ili odreska od mirovine, a invalidi uz iskaznicu ili rješenje o invalidnosti. <br>
                  Na jedan predočeni dokument moguće je ostvariti popust za jednu ulaznicu.
               </p>
               <p>Kazalište Theatron se obvezuje da će dobivene podatke koristiti isključivo za evidenciju ostvarenih popusta te ih neće koristiti u nikakve druge svrhe.<br>
                  Rezervacije za ulaznice ne primamo!
               </p>
               <p>Pojedinačno KUPLJENE ulaznice je moguće vratiti ili zamijeniti najkasnije do 17 sati na dan predstave! Nakon toga za kupljene ulaznice nije moguć povrat novca kao ni zamjena.<br>
                  Za otkazivanje grupnih, organiziranih posjeta kazalištu povrat ulaznica potrebno je najaviti najkasnije 3 radna dana prije ugovorene izvedbe.
               </p>
            </div>

            <div class="column column-6">
               <div class="sljedecePred2">
                  <h1>Sljedeće predstave:</h1>
                  <?php
                     $dbc= mysqli_connect('localhost', 'root','21081994', 'theatron') or die('Error connecting to MySQL.');
                     
                     $query= "SELECT predstave.id, slike.slika140, predstave.naslov, predstave.datum, predstave.sati
                              from predstave 
                              join slike on predstave.id=slike.idPredstave limit 3,3";
                     
                     $result= mysqli_query($dbc, $query) or die("Error quering database");
                     
                     while($row = mysqli_fetch_array($result)){
                     
                      echo ' <div class="slijediPred">
                      <a href="opredstavi.php?id=' . $row[0]. ' "><img src=" ' . $row['slika140'] .'">
                      <h4>' . $row['naslov']. '</h4>
                      <p>' . $row['datum'].' u ' .$row['sati'] .' sati</p></a>
                      </div>
                      <br><br>';
                     }

                     ?>
               </div>
            </div>
         </div>
      </section>
      <br><br><br><br>
      
      <footer class="site-footer">
         <div class="row">
            <div class="column column-4">
               <h2>Kazalište Theatron</h2>
               <p>Ilica 88</p>
               <p>10 000 Zagreb</p>
               <p>tel: 01/395-501</p>
               <p>fax: 01/395-501</p>
               <p>kazalistetheatron@gmail.com</p>
            </div>
            <div class="column column-4">
               <h2>Radno vrijeme:</h2>
               <p>Svakim danom, osim nedjeljom</p>
               <p>od 09:30h do početka predstave.</p>
               <h3><a href="cjenik.php">Cjenik</a></h3>
               <h3><a href="onama.html">O nama</a></h3>
            </div>
            <div class="ikone column column-4">
               <p>Potražite nas na:</p>
               <p><a href="#"><i class="icon-facebook-squared"></i></a>
                  <a href="#"><i class="icon-youtube-play"></i></a>
                  <a href="#"><i class="icon-twitter"></i></a>
               </p>
            </div>
         </div>
      </footer>
   </body>
</html>