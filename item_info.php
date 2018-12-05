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

$query3 = "SELECT loc_name, store_buys_for_price AS store_buys_for FROM item JOIN inventory i USING(item_id) JOIN town t on i.store_loc_id=t.town_loc_id JOIN location l on t.town_loc_id=l.loc_id JOIN (SELECT max(store_buys_for_price) max_price FROM inventory WHERE item_id LIKE '$item') t2 WHERE store_buys_for_price = max_price AND item_id LIKE '$item';";

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
	print "There is no item matching your query! '$item' was not found in the database. Please try a different item name/number!";
}
else
{
	print "'$item' was found in the database, with the following information:\n\n";
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		$item_name = $row[item_name];
		print "\n";
		print "Item id: $row[item_id]\nName: $row[item_name]\nDescription: $row[description]\n";
	}

	print "\n\n";
	$result = mysqli_query($conn, $query2)
	or die(mysqli_error($conn));	
	if(! mysqli_num_rows($result))
	{
		print "There are no towns where $item_name is currently in stock!";
	}
	else
	{
		print "$item_name is currently in stock at the following location(s):\n";
	}
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		print "\n";
		print " $row[loc_name], where $row[number_in_stock] are available for $row[sale_price] each.";
	}

  
	print "\n\n";
	$result = mysqli_query($conn, $query3)
	or die(mysqli_error($conn));

	if(! mysqli_num_rows($result))
	{
		print "Error determining best place to sell item.";
	}
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		print "The place that pays the highest price for $item_name is the shop in $row[loc_name], which will pay $row[store_buys_for] per $item_name. Consider selling there if you have extras!";
	}

	print "\n\n";
	$result = mysqli_query($conn, $query4)
	or die(mysqli_error($conn));	
	if(! mysqli_num_rows($result))
	{
		print "There are no trainers who possess a $item_name!";
	}
	else
	{
		print "Currently, the following trainers are in possession of a $item_name:\n";
	}
	while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
	{
		print "\n";
		print " Trainer $row[trainer_id], located at $row[loc_name] at x coordinate $row[x_coord] and y coordinate $row[y_coord].";
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
	  