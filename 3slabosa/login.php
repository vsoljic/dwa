<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>Fantastic Beasts</title>
 
  <link rel="stylesheet" href="css/normalize.css" />
  <link rel="stylesheet" href="css/grid.css" />
  <link rel="stylesheet" href="css/stil1.css" />
  
  <?php 
				session_start();
				$_SESSION['username']= 'admin';
				$_SESSION['password']= 'admin';
				
	?>
</head>

<body>
  <header class="site-header-logged">
    <div class="row">

      <div class="column column-4">
        <img src="img/fantBeastsLogo2.png">
      </div>

      <div class="column column-8">
        <div class="odjava">
        	<form method="post" action="login.html">
        	<?php 
						
				if($_SESSION['username'] == $_POST['username'] && $_SESSION['password']==$_POST['password']){
					echo "Korisnik:".$_POST["username"]."</br>";
					echo "Lozinka:".$_POST["password"]."";
				}
				else{
					header("location:login.html");
				}
		
		
			?>
     
      	<input type="submit" name="login" value="Odjava">
  		</form>
      </div>
      </div> 
      



    </div>
  </header>
  
 
  <section class="body">
    <div class="row">
      <div class="column column-4">
      <nav class="main-navigation">
        <ul>
          <h2>IZBORNIK</h2>
          <li><a href="#osobni">Opcija </a></li>
          <li><a href="#skola">Opcija 3</a></li>
          <li><a href="#radno">Opcija 4</a></li>
          <li><a href="#znanje">Opcija 5</a></li>
        </ul>
      </nav>
    </div>

  <div class="sadrzaj column column-8"> 

    <div id="reklama">
     <img src="img/kplus.jpg">
        <input type="button" onclick="z('reklama')"></input>
    </div>

	  <div id="osobniPodaci">
       
        <p onclick="hide('osobniPodaci')"><a name="osobni">Osobni podaci</a></p>
        <p>Vedrana Šoljić</p>
        
          <p> Braće Domany 6, Srednjaci, 10000 Zagreb (Hrvatska) </p>   

          <p> vedrana.soljic1@gmail.com  </p>

          <p> Datum rođenja 21/08/1994 </p>
          <p> Državljanstvo hrvatsko </p>
          <p> Mjesto rođenja: Zagreb, Hrvatska</p>
        </p>
        <br>
		</div>
		
		<div id="podaciSkola">
        <p  onclick="hide('podaciSkola')"><a name="skola">Podaci o školovanju </a></p>
        <p>
          <b>23 srpnja 13–danas </b> Stručnik prvostupnik inženjer računarstva razina 6 EKO-a
          Tehničko Veleučilište u Zagrebu, Zagreb (Hrvatska) </p>
      
      <p>
      <b>6 rujna 09–15 lipnja 13 </b>  razina 4 EKO-a,
        XI. gimnazija
      Savska cesta 77, 10000 Zagreb (Hrvatska) 

        </p>

      <p>
        <b>rujan 2001-lipanj 09 </b> OŠ Trnsko
      </p>

        <br><br>
		</div>


		
 		<div id="iskustvo">
        <p  onmouseover ="hide('iskustvo')" onmouseout="show('iskustvo')"><a name="radno">Podaci o radnom iskustvu</a> </p>
        <p>
          <b>1 srpnja 13–15 rujna 13</b> Rad u skladištu
          VM2
        Rudeška 14, 10000 Zagreb (Hrvatska) 
          - deklariranje proizvoda
         </p>

         <p>
        <b>1 lipnja 14–danas </b>Statist
          Hrvatska Radiotelevizija
        Prisavlje 3, 10000 Zagreb (Hrvatska) 
          - statiranje na raznim emisijama
        </p>
        <br><br>
		</div>
		
		<div id="znanjevjestine">
        <p onclick="hide('znanjevjestine')"><a name="znanje"><p>Znanje i vještine</a></p>
        <p>jezici: engleski jezik, njemački jezik</p>

        <p>Sklona timskom radu, sposobnost prilagodbe, komunikativna
        Stečene sposobnosti zahvaljujući glazbenoj školi, solfeggio-u te orkestru, također plesanju rock'n'roll-a u grupi</p>

        <p>Vješto korištenje alata u MS Office-u – znanje stečeno u osnovnoj i srednjoj školi (Informatika), te na fakultetu na kolegiju “Primjena računala”
          Programski jezici: C, C++, C#, Java, PHP, SQL, Javascript
        </p>
		</div>

  </div>

      
  </section> 
<br><br><br>



 <script type="text/javascript"> 
	function show(id) {
    document.getElementById(id).style.display = 'block';

  }

  function hide(id) {
    document.getElementById(id).style.display =  'none';
  }

  function z(id){
    document.getElementById(id).style.zIndex = -1;
  }

             
 </script>

   <footer class="site-footer">
    <div class="row">
    <div class="column column-12"> <br>
      <p><b>&copy Copyright Fantastic Beats, 2016</b></p>
    </div>

    </div>
  </footer>
</body>
</html>