<?php include "connect.php"; 
session_start();
if (isset($_SESSION['username'])) {
    // Retrieve username from session
    $name = $_SESSION['username'];
    
    // Connect to the database
    $con = mysqli_connect("localhost", "root", "", "three_d");
    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
    }
    
    // Query to fetch user's full name
    $result = mysqli_query($con, "SELECT registration_order_no, firstname, middlename, lastname FROM users WHERE username='$name'");
    if (!$result) {
        die("Error in SQL query: " . mysqli_error($con));
    }
    
    // Fetch user's full name from the result
    $row = mysqli_fetch_assoc($result);
    
    // Check if a row was fetched
    if ($row) {
        // Concatenate first name, middle name, and last name into $fullname
        $firstname = $row['firstname'];
        $fullname = $firstname . " " . $row['middlename'] . " " . $row['lastname'];
        $registration_order_no=$row['registration_order_no'];
        
    } else {
        $fullname = "Full name not found";
    }
} else {
    // Redirect the user to the login page if not logged in
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="jquery.js" ></script>
</head>
<body>
<div class="h2"><?php echo $fullname;  ?></div>
        <div>
            <form action="" method="post" >
                <button class="btn btn-danger btn-sm" type="submit" name="logout" >Logout</button>
                <?php 
                if(isset($_POST['logout'])){
                    session_destroy();
                    header("location:login.php");
                }
                ?>
    <div class="msg-container">
        <div class="display-message">
        <?php
// Execute a SQL query that joins the `messages` and `users` tables
// $sql = "
//     SELECT groupmsg.message_content, users.firstname, users.middlename, users.lastname
//     FROM groupmsg
//     JOIN users ON groupmsg.sender = users.registration_order_no
    
// ";

// // Execute the query
// $result = mysqli_query($connect, $sql);

// // Check if the query execution is successful
// if ($result) {
//     // Loop through each row in the result set
//     while ($row = mysqli_fetch_assoc($result)) {
//         // Concatenate the sender's full name
//         $sender_fullname = $row['firstname'];
        
      

//         // Display the sender's full name and message content
//         echo htmlspecialchars($sender_fullname) . ": " . htmlspecialchars($row['message_content']) . "<br>";
//     }
// } else {
//     // Output an error message if the query failed
//     echo "Error fetching messages: " . mysqli_error($connect);
// }

// //inserting a message
// if(isset($_POST['submit'])){
//     $message= $_POST['message'];
//     $messageInsert = mysqli_query($connect, "INSERT INTO groupmsg (message_content, sender) VALUES ('$message', '$registration_order_no')");
// }
?>

         
        </div>
        <!-- message form  -->
        <form action="" method="post">
            <input type="hidden" name="sender" id="sender"  value="<?php echo $registration_order_no ?>" >
            <textarea name="message" id="message" cols="30" rows="10"></textarea>
            <!-- <button type="submit" name="submit">send</button> -->
            <input type="button" value="send" onclick="sendmsg()" >
        </form>
    </div>
    
</body>
<script>
    $(document).ready(function(){
        display();
        setInterval(fetchNewMessages, 3000);
    })
    function fetchNewMessages() {
    // Create an AJAX request to fetch new messages
    $.ajax({
        url: "display.php", // URL to your server script that fetches new messages
        type: "POST",
        success: function(data) {
            // Update the display with the new messages
            $(".display-message").html(data);
        },
        error: function(jqXHR, textStatus, errorThrown) {
            // Handle AJAX request errors
            console.error("Failed to fetch new messages: " + textStatus + ", " + errorThrown);
        }
    });
}

    function sendmsg() {
    // Create a FormData object
    var send = new FormData();
    
    // Get the value from the message input and the sender input
    var textmsg = $("#message").val();
    var texsender = $("#sender").val();
    
    // Append the message and sender to the FormData object
    send.append("message", textmsg);
    send.append("sender", texsender);
    
    // Make an AJAX POST request
    $.ajax({
        url: "sendmsg.php",
        type: "POST",
        data: send,
        contentType: false,  // Required for FormData
        processData: false,  // Required for FormData
        success: function(data) {
            // Clear the input field after sending the message
            $("#message").val("");
            display();
            // Optionally handle the response data if needed
            // For example, you can alert the success message or refresh the page
        },
        error: function(jqXHR, textStatus, errorThrown) {
            // Handle AJAX request errors
            console.error("AJAX request failed: " + textStatus + ", " + errorThrown);
            alert("An error occurred while sending the message.");
        }
    });
}

    function display(){
        var display = new FormData();
        var textmsg = $("#message").val();
        display.append("message", textmsg);
        $.ajax({
            url: "display.php",
            type: "POST",
            data: display,
            contentType: false,
            processData: false,
            success: function(data){
                $(".display-message").html(data);
            }
        })

    }
</script>
</html>