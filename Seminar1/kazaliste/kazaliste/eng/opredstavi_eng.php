<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8" />
      <title>THEATRON</title>
      <!--učitavanje fontova-->
      <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="../css/normalize.css" />
      <link rel="stylesheet" href="../css/grid.css" />
      <link rel="stylesheet" href="../css/stil.css" />
      <link rel="stylesheet" href="../fonts/css/fontello.css"/>
   </head>
   <body>
      <header class="site-header">
         <div class="row">
            <div class="column column-4">
               <h1 class="logo"><a href="index_eng.php">THEATRON</a></h1>
            </div>

            <!--glavna navigacija-->
            <div class="column column-6">
               <nav class="main-navigation">
                  <ul>
                     <li><a href="predstave_eng.php">Performances</a></li>
                     <li><a href="cjenik_eng.php">Catalog</a></li>
                     <li><a href="onama_eng.html">About</a></li>
                  </ul>
               </nav>
            </div>

            <!--jezici-->
            <div class="column column-2">
               <div class="lang">
                  <li>
                     <ul>
                  <li><a href="../opredstavi.php">HR</a></li>
                  <li><a href="#">ENG </a></li>
                  <ul>
                  </li>
               </div>
            </div>
         </div>
      </header>

      <section class="main">
         <div class="row">
            <div class="column column-12 navigiraj">
               <a href="index_eng.php">Home <i class="icon-right-open"></i></a> About performance
               <br><br><br>
            </div>
            <br><br><br>
            <?php
               $idGet='';
               if (isset($_GET['id'])) {
                   $idGet= $_GET['id'];
                   }
                  
               $dbc= mysqli_connect('localhost', 'root','21081994', 'theatron') or die('Error connecting to MySQL.');
               
               $query= "SELECT * from predstave_t
                       join predstave on predstave.id=predstave_t.idPredstave
                       join redatelj on predstave.idRedatelja=redatelj.id
                       join slike on slike.idPredstave=predstave.id
                       where predstave_t.idLanguage=1 and predstave.id=" .$idGet;
               
               $result= mysqli_query($dbc, $query) or die("Error quering database");
               
               $row = mysqli_fetch_array($result);
               
               echo '
               <div class=" grupaPredstava column column-6">
               
               <h1>' . $row['naslov_t'].'</h1>
               <p>' .$row['datum'] .', ' .$row['sati'] .'h  </p>
               <p><b>Director: ' . $row['ime'] . ' ' . $row['prezime'] . '</b></p>
               <br>
               <h2><b>PRICE: '.$row['cijena'] .' kn</b></h2> 
               </div>
               
               <div class="column column-6">
               <img src="../' .$row['slika460x350'] . '" alt="">
               </div>';
               
               ?>
         </div>
      </section>
      <br><br><br><br>

      <section class="oPredstaviDetails">
         <div class="row">

            <div class="column column-6">
               <?php
                  echo '<h1>About performance:</h1>';
                  echo '<p> ' . $row['oPredstavi_t'] . '</p>';
                  ?>
            </div>

            <div class="column column-6">
               <div class="sljedecePred2">
                  <h1>Next performances:</h1>
                  <?php
                     $query= "SELECT predstave.id, slike.slika140, predstave_t.naslov_t, predstave.datum, predstave.sati
                              from predstave_t
                              join predstave on predstave.id=predstave_t.idPredstave
                              join slike on predstave.id=slike.idPredstave 
                              where predstave_t.idLanguage=1 limit 3,3";
                     
                     $result= mysqli_query($dbc, $query) or die("Error quering database");
                     
                     while($row = mysqli_fetch_array($result)){
                     
                       echo ' <div class="slijediPred">
                        <a href="opredstavi_eng.php?id=' . $row[0]. ' "><img src=" ../' . $row['slika140'] .'">
                        <h4>' . $row['naslov_t']. '</h4>
                        <p>' . $row['datum'].', ' .$row['sati'] .'h</p></a>
                        </div>
                        <br><br>';
                     }

                     ?>
               </div>
            </div>
         </div>
      </section>

      <section class="glumci">
         <div class="row">
            <?php  $query= "SELECT imeGlumac, prezimeGlumac, uloga from glumci 
               join predstave on glumci.idPredstave=predstave.id
               join predstave_t on predstave.id=predstave_t.idPredstave
               where predstave_t.idLanguage=1 and predstave.id =" . $idGet;
               
               $result= mysqli_query($dbc, $query) or die("Error quering database");
               
               echo '<h1>Actors: </h1>';
               while($row = mysqli_fetch_array($result)){
               echo ' <div class="column column-12">';
               echo '<p>' . $row['uloga'] . ': ' .$row['imeGlumac'] . ' ' .$row['prezimeGlumac'] . '</p>';
               echo '</div>';
               };
               
               mysqli_close($dbc);
               ?>
         </div>
      </section>
      <br><br><br><br>

      <footer class="site-footer">
         <div class="row">
            <div class="column column-4">
               <h2>Theater Theatron</h2>
               <p>Ilica 88</p>
               <p>10 000 Zagreb</p>
               <p>tel: 01/395-501</p>
               <p>fax: 01/395-501</p>
               <p>kazalistetheatron@gmail.com</p>
            </div>
            <div class="column column-4">
               <h2>Working hours:</h2>
               <p>Every day, except Sundays</p>
               <p>from 09:30h until the beginning of the show.</p>
               <h3><a href="cjenik_eng.php">Catalog</a></h3>
               <h3><a href="onama_eng.html">About</a></h3>
            </div>
            <div class="ikone column column-4">
               <p>Find us on:</p>
               <p><a href="#"><i class="icon-facebook-squared"></i></a>
                  <a href="#"><i class="icon-youtube-play"></i></a>
                  <a href="#"><i class="icon-twitter"></i></a>
               </p>
            </div>
         </div>
      </footer>
   </body>
</html>