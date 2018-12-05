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
$ptype = $_POST['ptype'];

$ptype = mysqli_real_escape_string($conn, $ptype);
// this is a small attempt to avoid SQL injection
// better to use prepared statements

$query = "SELECT pokemon_id, name, COALESCE(type_2, 'None') as other_type FROM pokemon WHERE type_1 LIKE '$ptype' UNION SELECT pokemon_id, name, COALESCE(type_1, 'None') as other_type FROM pokemon WHERE type_2 LIKE '$ptype' ORDER BY pokemon_id;";
?>

<p>
The following query was submitted to the pokemon database:
<p>
<?php
print $query;
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
	print "There are no pokemon matching your query! '$ptype' may be an invalid type! Please try a different type!";
}
else
{
	print "Pokedex No.\tName\t\tSecondary Type\n";
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		print "\n";
		print "$row[pokemon_id]\t\t $row[name]\t\t $row[other_type]";
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
	  