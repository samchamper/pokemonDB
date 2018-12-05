<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>Location Info Query</title>
  </head>
  
  <body bgcolor="white">
  
  
  <hr>
  
  
<?php
$loc = $_POST['loc'];

$loc = mysqli_real_escape_string($conn, $loc);
// this is a small attempt to avoid SQL injection
// better to use prepared statements

$query = "SELECT x.loc_id, x.loc_name, x.loc_type, COALESCE(n.loc_name, 'nothing in particular') AS north, COALESCE(s.loc_name, 'nothing in particular') AS south, COALESCE(w.loc_name, 'nothing in particular') AS west, COALESCE(e.loc_name, 'nothing in particular') AS east FROM location x LEFT JOIN location n on n.loc_id=x.north_loc LEFT JOIN location s on s.loc_id=x.south_loc LEFT JOIN location e on e.loc_id=x.east_loc LEFT JOIN location w on w.loc_id=x.west_loc WHERE x.loc_id LIKE '$loc' OR x.loc_name LIKE '$loc';";
?>

<p>
The following initial query was submitted to the pokemon database:
<p>
<?php
print $query;
?>
<p>
Then the following queries used the return values from the above queries:
<p>
<?php
print "SELECT name as pokemon_name, level FROM trainer JOIN trainer_has_pokemon ON trainer_num=trainer_id JOIN pokemon ON pokemon_num=pokemon_id WHERE trainer_id LIKE '[RETURN VALUES FROM PREVIOUS QUERY]';";
?>
<p>
<?php
print "SELECT identifier as item_name FROM trainer JOIN trainer_has_item ON trainer=trainer_id JOIN item ON item=item_id WHERE trainer_id LIKE '[RETURN VALUES FROM PREVIOUS QUERY]';";
?>
<p>

<hr>
<p>

<?php
$result = mysqli_query($conn, $query)
or die(mysqli_error($conn));

print "<pre>";
if(! mysqli_num_rows($result))
{
	print "It looks like '$loc' is an invalid location! Please try a different location!";
}
else
{
	$type="";
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		$type = "$row[loc_type]";
		print "Loc ID: $row[loc_id]\nLoc Name: $row[loc_name]\nLoc type: $row[loc_type].\n";
		print "To the North lies $row[north], to the East lies $row[east]\nto the South lies $row[south] to the West lies $row[west].\n";
	}

	if ($type = "Town")
	{
		print "It's a town";
	}
	else
	{
		print "It's a route";
	}
	

}
?>


<?php
print "</pre>";
mysqli_free_result($result);
mysqli_free_result($subresult);
mysqli_free_result($subresult2);
mysqli_close($conn);
?>
<p>
<hr>
</body>
</html>
	  