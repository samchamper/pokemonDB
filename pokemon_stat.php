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
$total = $_POST['total'];

$total = mysqli_real_escape_string($conn, $total);
// this is a small attempt to avoid SQL injection
// better to use prepared statements

$query = "SELECT pokemon_id, name, hit_points + attack + defense + special_attack + special_defense + speed as stat_total FROM pokemon WHERE hit_points + attack + defense + special_attack + special_defense + speed >= $total ORDER BY stat_total DESC;";
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
	print "There are no pokemon with stats summing to greater or equal than $total!";
}
else
{
	print "The following pokemon have stats totaling at least $total: \n\n";
	print "Pokedex No.\tStat total\tName\n";
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		print "\n";
		print "$row[pokemon_id]\t$row[stat_total]\t$row[name]";
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
	  