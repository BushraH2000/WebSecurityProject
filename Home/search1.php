<?php
include('../connectDB.php');


$s= htmlspecialchars($_POST['search']);
$search = "%$s%";

//Create prepared statment
$stmt = mysqli_stmt_init($conn);
            
//SQL Query to get foods based on search keyword
$sql="SELECT * FROM tools WHERE itemName LIKE ?";
  
//Prepare prepared statment
if(!mysqli_stmt_prepare($stmt, $sql)){
  echo "Faild";
}
else {
  //Bind parameter to the placeholder
  mysqli_stmt_bind_param($stmt, "s", $search);

  //Run the prepared statment
  mysqli_stmt_execute($stmt);
  $result = mysqli_stmt_get_result($stmt);
  // $items = mysqli_fetch_assoc($res);


}
//Execute the query
// $result = mysqli_query($conn, $sql);
    
//Count Rows
// $items =mysqli_fetch_all($result, MYSQLI_ASSOC);


            
        //Count Rows

  //Count Rows
  // $count =mysqli_num_rows($result);
  // //Check whether food available of not
  // if($count>0)
  // {
  //     echo"<div class='error'> <h3><strong> Results for:</strong>$search </h3></div> "; 
  //   while($item=mysqli_fetch_assoc($result))
  //   {
      
  //   }
  // }
  // else
  //     {
  //         echo"<div class='error'> <h3><strong>No results for:</strong>$search </h3><br>Try checking your spelling or use more general terms</div> "; 
  //     }
    
        
          

?>