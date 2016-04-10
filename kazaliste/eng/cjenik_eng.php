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
                  <li><a href="../cjenik.php">HR</a></li>
                  <li><a href="#">ENG</a></li>
                  <ul>
                  </li>
               </div>
            </div>
         </div>
      </header>

      <section class="cjenik">
         <div class="row">
            <div class="column column-12 navigiraj">
               <a href="index.php">Home <i class="icon-right-open"></i></a> Catalog
            </div>
            <div class="column column-6">
               <h1>PRICE LIST</h1>
               <p> 
                  The full ticket price is 70.00kn.
               </p>
               <p> Organized sale (more than 15 persons):</p>
               <p> - companies 45,00 kn<br>
                  - Schools and retirement homes 35,00 kn<br>
                  And in the season 2015./16. we have the possibility of individual ticket by sliding prices!
               </p>
               <p> The sliding price list - if the ticket was bought:<br>
                  - 20 or more days prior to performance  - 40,00 kuna<br>
                  - 10 or more days prior to performance - 50,00 kuna<br>
                  - Less than 10 days before performance - 70,00 kuna<br>
               </p>
            </div>
         </div>
      </section>
      <br><br><br><br>

      <section class="popusti">
         <div class="row">
            <div class="column column-6">
               <h1>Discounts:</h1>
               <p>Discounts are realized exclusively on the theater Theatron, Ilica 88 upon presentation of relevant documents. <br>
                  Student discount can be made upon presentation of a certified index for the current semester or confirmation on the status of active study obtained at students.
                  Discount on tickets exercised by presenting the decision on retirement or steak of pensions and disabled with a card or a decision on disability. directory
                  In a document presented it is possible to receive a discount for one ticket.
               </p>
               <p>Theater Theatron agrees to use the data exclusively for the record achieved discount and they will not be used for any other purpose. Directory
                  Reservations for tickets are not accepted!
               </p>
               <p>Individually purchased tickets can return or exchange no later than 17 hours on the day of the show! After that purchased tickets are not refundable and no replacement.
                  To cancel group organized visit the theater return ticket should be announced no later than 3 working days before the agreed performance.
               </p>
            </div>

            <div class="column column-6">
               <div class="sljedecePred2">
                  <h1>Next performances:</h1>
                  <?php
                     $dbc= mysqli_connect('localhost', 'root','root', 'theatron') or die('Error connecting to MySQL.');
                     
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