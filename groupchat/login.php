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
        <input type="text" name="username" placeholder="Username" >
        <input type="text" name="password" placeholder="Password">
        <button type="submit" name="submit" >login</button>
    </form>

</body>
</html>

<style>
    /* Reset default margin and padding */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Style the body */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Style the form */
form {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

/* Style form elements */
input[type="text"],
button[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
}

button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}

/* Responsive design */
@media (max-width: 600px) {
    form {
        width: 90%;
    }
}
</style>