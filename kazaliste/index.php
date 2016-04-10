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
                  <li><a href="eng/index_eng.php">ENG </a></li>
                  <ul>
                  </li>
               </div>
            </div>
         </div>
      </header>

      <section class="intro">
         <div class="row">
         <div class="column column-6">
            <div class="glavniNaslov">
               <?php
                  $dbc= mysqli_connect('localhost', 'root','root', 'theatron') or die('Error connecting to MySQL.');
                  
                  $query= "SELECT predstave.id, predstave.naslov, redatelj.ime, redatelj.prezime from predstave 
                           join redatelj on predstave.idRedatelja=redatelj.id where predstave.id=7";
                  
                  $result= mysqli_query($dbc, $query) or die("Error quering database");
                  
                  $row = mysqli_fetch_array($result);
                  
                  echo '<h1>' . $row['naslov'] . '</h1>
                        <p>Redatelj: ' . $row['ime'] . ' ' . $row['prezime'] . '</p></div><br><br>';
                  
                  
                  
                  echo '<a href="opredstavi.php?id=' .$row[0] . '">
                  <form> 
                  <button type="submit" name="vise" id="submit">Više...</input>
                  </form></a>'
                   ?>
            </div>
         </div>
      </section>

      <section class="slijedi">
         <div class="row">
            <div class="column column-12">
               <h2>Slijedi...</h2>
            </div>
            <?php
               $query= "SELECT predstave.id, slike.slika300, predstave.naslov, redatelj.ime, redatelj.prezime 
                        from predstave 
                        join redatelj on redatelj.id=predstave.idRedatelja 
                        join slike on predstave.id=slike.idPredstave limit 6";
               
                $result= mysqli_query($dbc, $query) or die("Error quering database");
               
                while($row = mysqli_fetch_array($result)){
               
                echo '<div class="column column-4">
                <div class="imageGrupa"><a href="opredstavi.php?id=' .$row[0] . 
                '"><img src="' .$row[1] . '"></a></div>
                <div class="grupaNaslov">
                <a href="opredstavi.html">
                <h3>' . $row['naslov'] . '</h3></a>
                <p> Redatelj: ' . $row['ime'] . ' ' . $row['prezime'] . '</p>
                </div>
                </div>';
               
               }
 
               mysqli_close($dbc);

               ?>
         </div>
      </section>

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