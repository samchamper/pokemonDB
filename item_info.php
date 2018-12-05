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
  
$item = $_POST['item'];

$item = mysqli_real_escape_string($conn, $item);
// this is a small attempt to avoid SQL injection
// better to use prepared statements

$query = "SELECT item_id, identifier as item_name, short_effect as description FROM item WHERE item_id LIKE '$item' OR identifier LIKE '$item';";

$query2 = "SELECT loc_name, number_in_stock, store_sells_for_price AS sale_price FROM item JOIN inventory i USING(item_id) JOIN town t on i.store_loc_id=t.town_loc_id JOIN location l on t.town_loc_id=l.loc_id WHERE number_in_stock > 0 AND (item_id LIKE '$item' OR identifier LIKE '$item');";

$query3 = "SELECT loc_name, max(store_buys_for_price) AS store_buys_for FROM item JOIN inventory i USING(item_id) JOIN town t on i.store_loc_id=t.town_loc_id JOIN location l on t.town_loc_id=l.loc_id WHERE item_id LIKE '$item' OR identifier LIKE '$item';";

$query4 = "SELECT trainer_id, loc_name, x_coord, y_coord FROM item i JOIN trainer_has_item ti ON i.item_id=ti.item JOIN trainer t ON ti.trainer=t.trainer_id JOIN location ON t.route=location.loc_id WHERE item_id LIKE '$item' OR identifier LIKE '$item';";
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
<p>
<?php
print $query4;
?>
<hr>
<p>

<?php
$item_name = "";
$result = mysqli_query($conn, $query)
or die(mysqli_error($conn));

print "<pre>";
if(! mysqli_num_rows($result))
{
	$res_str = "There are no pokemon matching your query! ";
	$res_str = $res_str."'".$pmon."' was not found in the database. Please try a different name/pokedex number!\n";
    print $res_str;
}
else
{
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
	$pmon_name = $row[name];
    print "\n";
	print "'".$pmon."' was found in the database, with the following information:\n\n";
    print "Pokedex number: $row[pokemon_id]\nName: $row[name]\nType: $row[type1] $row[type2]\n";
	print "Stats:\n Hit points $row[hit_points]\n Attack: $row[attack]\n Defense: $row[defense]\n Special Attack: $row[special_attack]\n Special Defense: $row[special_defense]\n Speed: $row[speed]\n\n";
    if($row[evolves_to])
	{
		print "$row[name] evolves into $row[evolves_to]";
		if($row[second_evolution])
		{
			print " which in turn evolves into $row[second_evolution]";
		}
		print ".\n";
	}
	if($row[previous_evolution])
	{
		print "$row[name] evolves from $row[previous_evolution]";
		if($row[second_previous_evolution])
		{
			print " which in turn evolves from $row[second_previous_evolution]";
		}
		print ".\n";
	}
	
	if($row[legendary] == "TRUE")
	{
		print "$row[name] is a legendary pokemon. Approach with caution.\n";
	}
  }

print "\n\n";
$result = mysqli_query($conn, $query2)
or die(mysqli_error($conn));

if(! mysqli_num_rows($result))
{
	print "There are no routes along which $pmon_name can be captured!";
}
else
{
	print "$pmon_name can be captured on the following route(s):";
}
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "\n";
    print " $row[loc_name]";
  }

  
print "\n\n";
$result = mysqli_query($conn, $query3)
or die(mysqli_error($conn));

if(! mysqli_num_rows($result))
{
	print "There are no trainers in possession of a $pmon_name!";
}
else
{
	print "The following trainers have a $pmon_name:";
}
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
{
    print "\n";
    print " Trainer $row[trainer_id], located in $row[loc_name], has a level $row[level] $pmon_name";
	if($row[loc_type] == "Town")
	{
		print ", and is a gym leader";
	}
	print ".";
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
	  