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
                     <li><a href="predstave_eng.php">Preformances</a></li>
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
                  <li><a href="../predstave.php">HR</a></li>
                  <li><a href="#">ENG </a></li>
                  <ul>
                  </li>
               </div>
            </div>
         </div>
      </header>

      <section class="introPredstave">
         <div class="row">
            <div class="column column-12 navigiraj">
               <a href="index_eng.php">Home <i class="icon-right-open"></i></a> Performances
            </div>
            <div class="column column-12">
               <h1>List of performances:</h1>
            </div>
         </div>
      </section>

      <section class="introPredstave">
         <?php
            $dbc= mysqli_connect('localhost', 'root','21081994', 'theatron') or die('Error connecting to MySQL.');
            
            $query= "SELECT predstave.id, slike.slika460, predstave_t.naslov_t, predstave.datum, 
                     predstave.sati, redatelj.ime, redatelj.prezime 
            from predstave 
            join predstave_t on predstave.id=predstave_t.idPredstave
            join redatelj on redatelj.id=predstave.idRedatelja 
            join slike on predstave.id=slike.idPredstave 
            where predstave_t.idLanguage= 1 limit 5";
         
           $result= mysqli_query($dbc, $query) or die("Error quering database");
            
            
            while($row = mysqli_fetch_array($result)){
            
            echo ' <div class="row">
            <div class="column column-6">
            
            <div class="date column column-2">
            <h2> ' . $row['datum'] .'</h2>
            </div>
            
            <div class="predstaveLink column column-3">
            <p>' . $row['sati'] .'h</p>
            <h1><a href="opredstavi_eng.php?id='. $row[0] .'">' .$row['naslov_t'] .'</a></h1>
            <p>Director: ' . $row['ime'] . ' '. $row['prezime'] . '</p>
            </div>
            </div>
            
            <div class="slika column column-6">
            <a href="opredstavi_eng.php?id=' .$row[0] . '"> <img src="../' .$row[1] . '" alt=""></a>
            </div>
            </div> <br><br><br><br> ';
            
            
            }

            mysqli_close($dbc);
            
            ?>
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