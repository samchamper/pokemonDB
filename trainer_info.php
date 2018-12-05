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

$pre_query = "SELECT loc_name FROM location WHERE loc_id LIKE '$traner_loc';";

$query = "SELECT trainer_id FROM trainer WHERE route LIKE '$traner_loc';";
?>

<p>
The following initial query was submitted to the pokemon database:
<p>
<?php
print $query;
?>
<p>

<hr>
<p>

<?php
$result = mysqli_query($conn, $pre_query)
or die(mysqli_error($conn));

print "<pre>";
if(! mysqli_num_rows($result))
{
	print "It looks like '$traner_loc' is an invalid location! Please try a different location!";
}
else
{
	$loc_name = "";
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		$loc_name = "$row[loc_name]";
	}
	$result = mysqli_query($conn, $query)
	or die(mysqli_error($conn));

	if(! mysqli_num_rows($result))
	{
		print "There are no no trainers in $loc_name! Please try a different location!";
	}
	else
	{
		print "The following trainers are present in $loc_name:";
		while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
		{
			print "\n";
			print "Trainer $row[trainer_id]";
		}
		
		while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
		{
			print "\n";
			print "Trainer $row[trainer_id]";
		}
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
	  