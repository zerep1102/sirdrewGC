<?php
    session_start();
    if(isset($_POST["submit"])){
        $username= $_POST["username"];
        $password=$_POST["password"];
        $_SESSION["username"] = $username;
        $con=mysqli_connect("localhost","root","","three_d");
        $result= mysqli_query($con,"SELECT * FROM users WHERE username='$username'  and password='$password'");
        $count=mysqli_num_rows($result);
        if($count>0){
            header("location:index.php");
        }else{
            echo "invalid input";
        }

    }
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <input type="text" name="username" >
        <input type="text" name="password" >
        <button type="submit" name="submit" >login</button>
    </form>

</body>
</html>