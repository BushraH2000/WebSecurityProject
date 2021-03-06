<?php
    require ('../connectDB.php');
    if(isset($_POST['submit'])){
  
    if(!isset($_SESSION)) 
    { 
        session_start(); // Access the existing session.
    } 
    $stmt = mysqli_stmt_init($conn);
    $sql = 'SELECT * FROM users WHERE username = ?';
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        echo "Failed";   
    }
    else {
        
        mysqli_stmt_bind_param($stmt , 's' , htmlspecialchars($_POST['username']));
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        define('ROOT_URL', '../index.php');
        $row = mysqli_fetch_assoc($result);
        echo $row['username']; 
            if(($_POST['username'] == $row['username']) && (password_verify(htmlspecialchars($_POST['password']), $row['password']))){
                // password_verify(htmlspecialchars($_POST['password']), $row['password'])
                $_SESSION['userId'] = $row['ID'];
                $_SESSION['name'] = $row['name'];
                $_SESSION['username'] = $row['username'];
                $_SESSION['Pr']= $row['Pr'];
                $_SESSION['email'] = $row['email'];
                header("Location: " . ROOT_URL );  
            }
            else {
                $Error = "Sorry, your password or username was incorrect.";
            
        }
    }
}



















// Bind parameters (s = string, i = int, b = blob, etc), in our case the username is a string so we use "s"
// $stmt->bind_param('s', $_POST['username']);
// $stmt->execute();
// // Store the result so we can check if the account exists in the database.
// $stmt->store_result();
// if ($stmt->num_rows > 0) {
//     $stmt->bind_result($id, $password);
//     $stmt->fetch();
//     // Account exists, now we verify the password.
//     // Note: remember to use password_hash in your registration file to store the hashed passwords.
//     if (password_verify($_POST['password'], $password)) {
//         // Verification success! User has logged-in!
//         // Create sessions, so we know the user is logged in, they basically act like cookies but remember the data on the server.
//         session_regenerate_id();
//         $_SESSION['loggedin'] = TRUE;
//         $_SESSION['name'] = $_POST['username'];
//         $_SESSION['id'] = $id;
//         echo 'Welcome ' . $_SESSION['name'] . '!';
//     } else {
//         // Incorrect password
//         echo 'Incorrect username and/or password!';
//     }
// } else {
//     // Incorrect username
//     echo 'Incorrect username and/or password!';
// }
// $stmt->close();
?>