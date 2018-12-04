<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>Pokemon Information Query</title>
  </head>
  
  <body bgcolor="white">
  
  
  <hr>
  
  
<?php
  
$pmon = $_POST['pmon'];

$pmon = mysqli_real_escape_string($conn, $pmon);
// this is a small attempt to avoid SQL injection
// better to use prepared statements

$query = "SELECT p1.pokemon_id, p1.name, p1.type_1 AS type1, p1.type_2 AS type2, p1.hit_points, p1.attack, p1.defense, p1.special_attack, p1.special_defense, p1.speed, p1.legendary, p2.name AS evolves_to, p3.name AS second_evolution, p4.name AS previous_evolution, p5.name AS second_previous_evolution FROM pokemon p1 LEFT JOIN pokemon p2 on p1.pokemon_id=p2.evolves_from_id LEFT JOIN pokemon p3 on p2.pokemon_id=p3.evolves_from_id LEFT JOIN pokemon p4 on p4.pokemon_id=p1.evolves_from_id LEFT JOIN pokemon p5 on p5.pokemon_id=p4.evolves_from_id WHERE p1.name LIKE ";
$query = $query."'".$pmon."' OR p1.pokemon_id LIKE ";
$query = $query."'".$pmon."';";

?>

<p>
The following queries were submitted to the pokemon database:
<p>
<?php
print $query;
?>

<hr>
<p>
Result of query:
<p>

<?php
$result = mysqli_query($conn, $query)
or die(mysqli_error($conn));

print "<pre>";
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "\n";
	if ($row[pokemon_id])
    {
        print "Test\n";
    }
    print "$row[pokemon_id]  $row[name] $row[type1] $row[type2]";
	print "$row[pokemon_id]";
  }
print "</pre>";

mysqli_free_result($result);

mysqli_close($conn);

?>

<p>
<hr>

 
 
</body>
</html>
	  