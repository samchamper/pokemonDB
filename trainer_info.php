<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>Pokemon Type Query</title>
  </head>
  
  <body bgcolor="white">
  
  
  <hr>
  
  
<?php
$traner_loc = $_POST['traner_loc'];

$traner_loc = mysqli_real_escape_string($conn, $traner_loc);
// this is a small attempt to avoid SQL injection
// better to use prepared statements

$pre_query = "SELECT loc_name FROM location WHERE loc_id LIKE '$traner_loc' OR loc_name LIKE '$traner_loc';";

$query = "SELECT trainer_id FROM trainer WHERE route LIKE '$traner_loc';";
?>

<p>
The following initial querys was submitted to the pokemon database:
<p>
<?php
print $pre_query;
?>
<p>
<?php
print $query;
?>
<p>
Then the following queries used the return values from the above queries:
<p>
<?php
print "SELECT name as pokemon_name, level FROM trainer JOIN trainer_has_pokemon ON trainer_num=trainer_id JOIN pokemon ON pokemon_num=pokemon_id WHERE trainer_id LIKE [RETURN VALUES FROM PREVIOUS QUERY];";
?>
<p>
<?php
print "WHERE trainer_id LIKE [RETURN VALUES FROM PREVIOUS QUERY];";
?>
<p>

<hr>
<p>


<p>
<hr>
</body>
</html>
	  