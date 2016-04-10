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
                  <li><a href="eng/opredstavi_eng.php">ENG </a></li>
                  <ul>
                  </li>
               </div>
            </div>
         </div>
      </header>

      <section class="main">
         <div class="row">
            <div class="column column-12 navigiraj">
               <a href="index.php">Početna <i class="icon-right-open"></i></a> O predstavi
               <br><br><br>
            </div>
            <br><br><br>

            <?php
              $idGet='';
              if (isset($_GET['id'])) {
                  $idGet= $_GET['id'];
                  }
               
                  
              $dbc= mysqli_connect('localhost', 'root','root', 'theatron') or die('Error connecting to MySQL.');
               
              $query= "SELECT * from predstave 
                       join redatelj on predstave.idRedatelja=redatelj.id
                       join slike on slike.idPredstave=predstave.id
                       where predstave.id = " . $idGet;
               
              $result= mysqli_query($dbc, $query) or die("Error quering database");
               
              $row = mysqli_fetch_array($result);
               
              echo '
              <div class=" grupaPredstava column column-6">
               
              <h1>' . $row['naslov'].'</h1>
              <p>' .$row['datum'] .' u ' .$row['sati'] .'  sati </p>
              <p><b>Redatelj: ' . $row['ime'] . ' ' . $row['prezime'] . '</b></p>
              <br>
              <h2><b>CIJENA: '.$row['cijena'] .' kn</b></h2> 
              </div>
               
              <div class="column column-6">
              <img src="' .$row['slika460x350'] . '" alt="">
              </div>';
               
               ?>
         </div>
      </section>
      <br><br><br><br>

      <section class="oPredstaviDetails">
         <div class="row">
            <div class="column column-6">
               <?php
                  echo '<h1>O predstavi:</h1>';
                  echo '<p> ' . $row['oPredstavi'] . '</p>';
                  ?>
            </div>

            <div class="column column-6">
               <div class="sljedecePred2">
                  <h1>Sljedeće predstave:</h1>

                  <?php
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

      <section class="glumci">
         <div class="row">

            <?php  $query= "SELECT * from glumci 
               join predstave on glumci.idPredstave=predstave.id
               where predstave.id = " . $idGet;
               
               $result= mysqli_query($dbc, $query) or die("Error quering database");
               
               echo '<h1>Glumci: </h1>';

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