<?php


if(!isset($_SESSION)) 
{ 
	session_start(); // Access the existing session.
} 

// If no session variable exists, redirect the user:
if (! (isset($_SESSION['username']) || isset($_SESSION['userId']))) {
	header('Location:../index.php');
	exit();	
} 
else { // Cancel the session:	
	$_SESSION = array(); // Clear the variables.
	session_destroy(); // Destroy the session itself.
	header('Location:../index.php');
	exit();
}


?>