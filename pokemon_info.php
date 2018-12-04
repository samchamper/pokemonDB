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

$query2 = "SELECT loc_name FROM pokemon p JOIN pokemon_at_location pl on p.pokemon_id=pl.mon_id JOIN location l on l.loc_id=pl.location_id WHERE p.name LIKE ";
$query2 = $query2."'".$pmon."' OR p.pokemon_id LIKE '$pmon';";

$query3 = "SELECT trainer_id, loc_name, loc_type, level FROM pokemon p JOIN trainer_has_pokemon tp ON tp.pokemon_num=p.pokemon_id JOIN trainer t on t.trainer_id=tp.trainer_num JOIN location l on l.loc_id=t.route WHERE p.name LIKE ";
$query3 = $query2."'".$pmon."' OR p.pokemon_id LIKE '$pmon';";

?>

<p>
The following queries were submitted to the pokemon database:
<p>
<?php
print $query;
?>
<p>
<?php
print $query2;
?>
<p>
<?php
print $query3;
?>

<hr>
<p>

<?php
$result = mysqli_query($conn, $query)
or die(mysqli_error($conn));

print "<pre>";
if(! mysqli_num_rows($result))
{
	$res_str = "There are no pokemon matching your query! ";
	$res_str = $res_str."'".$pmon."' was not found in the database. Please try a different name/pokedex number!\n";
    print $res_str;
}
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "\n";
	print "'".$pmon."' was found in the database, with the following information:\n\n";
    print "Pokedex number: $row[pokemon_id]\nName: $row[name]\nType: $row[type1] $row[type2]\n";
	print "Stats:\n Hit points $row[hit_points]\n Attack: $row[attack]\n Defense: $row[defense]\n Special Attack: $row[special_attack]\n Special Defense: $row[special_defense]\n Speed: $row[speed]\n\n";
    if($row[evolves_to])
	{
		print "$pmon evolves into $row[evolves_to]";
		if($row[second_evolution])
		{
			print " which in turn evolves into $row[second_evolution]";
		}
		print ".\n";
	}
	if($row[previous_evolution])
	{
		print "$pmon evolves from $row[previous_evolution]";
		if($row[second_previous_evolution])
		{
			print " which in turn evolves from $row[second_previous_evolution]";
		}
		print ".\n";
	}
	
	if($row[legendary] == "TRUE")
	{
		print "$pmon is a legendary pokemon. Approach with caution.\n";
	}
  }

?>

<?php
$result = mysqli_query($conn, $query2)
or die(mysqli_error($conn));

if(! mysqli_num_rows($result))
{
	$res_str = "There are no pokemon matching your query! ";
	$res_str = $res_str."'".$pmon."' was not found in the database. Please try a different name/pokedex number!\n";
    print $res_str;
}
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "\n";
	print "'".$pmon."' was found in the database, with the following information:\n\n";
    print "Pokedex number: $row[pokemon_id]\nName: $row[name]\nType: $row[type1] $row[type2]\n";
	print "Stats:\n Hit points $row[hit_points]\n Attack: $row[attack]\n Defense: $row[defense]\n Special Attack: $row[special_attack]\n Special Defense: $row[special_defense]\n Speed: $row[speed]\n\n";
    if($row[evolves_to])
	{
		print "$pmon evolves into $row[evolves_to]";
		if($row[second_evolution])
		{
			print " which in turn evolves into $row[second_evolution]";
		}
		print ".\n";
	}
	if($row[previous_evolution])
	{
		print "$pmon evolves from $row[previous_evolution]";
		if($row[second_previous_evolution])
		{
			print " which in turn evolves from $row[second_previous_evolution]";
		}
		print ".\n";
	}
	
	if($row[legendary] == "TRUE")
	{
		print "$pmon is a legendary pokemon. Approach with caution.\n";
	}
  }

?>




<?php
print "</pre>";
mysqli_free_result($result);
mysqli_close($conn);
?>
<p>
<hr>
</body>
</html>
	  