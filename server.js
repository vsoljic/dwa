var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var express = require('express');
var session = require('express-session');
var app = express();

// Create application/x-www-form-urlencoded parser
var urlencodedParser = bodyParser.urlencoded({ extended: false })

app.use(express.static('public'));
app.use(session({secret: 'ssshhhhh'}));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.get('/login.html', function (req, res) {
   res.sendFile( __dirname + "/" + "login.html" );
})

var sess; 
/* app.get('/', function(res,req){
	sess=req.session;
	
 	if(sess.first_name || sess.last_name){
		res.send("U sesiji postoji first_name ili last_name");
	} else {
		res.send("U sesiji ne postoji niti jedna varijabla");
	}
	 
}); 
*/ 

/*ZA SESIJE!!!!*/
app.post('/process_post', function(req,res){
	sess = req.session;
	sess.first_name = req.body.first_name;
	sess.last_name = req.body.last_name;
	
	if(sess.first_name == 'Vedrana' && sess.last_name == 'Soljic'){
		res.send('<h1> Hello ' + sess.first_name + ' ' + sess.last_name + '! :)</h1>');
	} else {
		res.send("<h2>Nije dobar user! </h2>");
	}
	

});
/*  --> OVO JE BEZ SESIJA; PROVJERA DA LI JE USER DOBAR
app.post('/process_post', urlencodedParser, function (req, res) {
   // Prepare output in JSON format
   response = {
	   first_name:req.body.first_name,
       last_name:req.body.last_name
   };
	if (response.first_name != 'admin' && response.last_name != 'admin'){
			console.log("Nije dobar user");
			res.send("NIJE DOBAR USER. POKUSAJTE PONOVO");
	} else {
		console.log(response);
		res.end(JSON.stringify(response));
	}
   
 
}) */

var server = app.listen(8081, function () {

  var host = server.address().address
  var port = server.address().port

  console.log("Example app listening at http://%s:%s", host, port)

})