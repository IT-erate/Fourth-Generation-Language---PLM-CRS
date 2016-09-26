<?php
	$con = new mysqli('localhost', 'root', '', 'plm_crs');

	if($con->connect_errno)
	{
		die("$con->connect_error");
	}
?>