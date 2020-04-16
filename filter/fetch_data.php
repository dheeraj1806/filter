<?php

//fetch_data.php

include('database_connection.php');

if(isset($_POST["action"]))
{
	$query = "
		SELECT * FROM shoes_details WHERE status = '1'
	";
	if(isset($_POST["minimum_price"], $_POST["maximum_price"]) && !empty($_POST["minimum_price"]) && !empty($_POST["maximum_price"]))
	{
		$query .= "
		 AND price BETWEEN '".$_POST["minimum_price"]."' AND '".$_POST["maximum_price"]."'
		";
	}
	if(isset($_POST["brand"]))
	{
		$brand_filter = implode("','", $_POST["brand"]);
		$query .= "
		 AND brandname IN('".$brand_filter."')
		";
	}
	if(isset($_POST["size"]))
	{
		$ram_filter = implode("','", $_POST["size"]);
		$query .= "
		 AND shoesize IN('".$ram_filter."')
		";
	}
	if(isset($_POST["rating"]))
	{
		$storage_filter = implode("','", $_POST["rating"]);
		$query .= "
		 AND rating IN('".$storage_filter."')
		";
	}
	if(isset($_POST["color"]))
	{
		$color_filter = implode("','", $_POST["color"]);
		$query .= "
		 AND shoecolor IN('".$color_filter."')
		";
	}

	$statement = $connect->prepare($query);
	$statement->execute();
	$result = $statement->fetchAll();
	$total_row = $statement->rowCount();
	$output = '';
	if($total_row > 0)
	{
		foreach($result as $row)
		{
			$output .= '
			<div class="col-sm-4 col-lg-3 col-md-3">
				<div style="border:1px solid #ccc; border-radius:5px; padding:16px; margin-bottom:16px; height:450px;">
					<img src="image/'. $row['image'] .'" alt="" class="img-responsive" >
					<p align="center"><strong><a href="#">'. $row['shoename'] .'</a></strong></p>
					<h4 style="text-align:center;" class="text-danger" >'. $row['price'] .'</h4>
					<p>Color : '. $row['shoecolor'].' <br />
					Brand : '. $row['brandname'] .' <br />
					Size : '. $row['shoesize'] .' <br />
					Rating : '. $row['rating'] .' * </p>
				</div>

			</div>
			';
		}
	}
	else
	{
		echo "ERROR: Could not able to execute $query. " . mysqli_error($connect);
	}
	echo $output;
}

?>