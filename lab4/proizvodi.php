<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>Fantastic Beasts</title>
 
  <link rel="stylesheet" href="css/normalize.css" />
  <link rel="stylesheet" href="css/grid.css" />
  <link rel="stylesheet" href="css/stil1.css" />

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
          <li><a href="#osobni">Opcija 2</a></li>
          <li><a href="#skola">Opcija 3</a></li>
          <li><a href="#radno">Opcija 4</a></li>
          <li><a href="#znanje">Opcija 5</a></li>
        </ul>
      </nav>
    </div>

      <div class="sadrzaj column column-8"> 

        <input type= "text" id="search" name="search"> </input>
        <input type="submit" id="submit" onclick="trazi()"></input>
        <br><br>

      <table>
        <thead>
          <tr>
            <th>Ime proizvoda</th>
            <th>CIJENA</th>
          </tr>
        </thead>
        <tbody>
        <?php
    
       require_once 'idiorm.php';
        ORM::configure('mysql:host=localhost;dbname=fantastic');
        ORM::configure('username','root');
        ORM::configure('password','21081994');    
        
        session_start();
  
        //$dbc= mysqli_connect('localhost', 'root','21081994', 'fantastic') or die('Error connecting to MySQL.');

        $query = ORM::for_table('proizvod')
                ->select('proizvod.*')
                ->find_many();

        //$query= "SELECT id, opis, naziv, cijena from proizvod";

       // $result= mysqli_query($dbc, $query) or die("Error quering database");


       foreach($query as $result):

         echo "
                <tr>
                <td><div class='naziv'><b>$result->naziv</b> <br><br> " . "$result->opis " . "</div></td>
                <td><div class='cijena'>$result->cijena" . "kn" . "</div></td>
                </tr>
            ";

           endforeach;

      ?>
      </tbody>
    </table>
      


      </div>      
  </section> 
<br><br><br>

   <footer class="site-footer">
    <div class="row">
    <div class="column column-12"> <br>
      <p><b>&copy Copyright Fantastic Beats, 2016</b></p>
    </div>

    </div>
  </footer>

   <script type="text/javascript"> 

          function trazi(){
            var unos = document.getElementById("search").value;
            var find= document.getElementsByTagName("TR").value;
            
            for(var i=1; i< find.length; i++){
              var c= find[i].innerText.search(unos);
              if(c == -1){
                find[i].style.display="none";
              }
            }
     
          }
          
        </script>


</body>
</html>