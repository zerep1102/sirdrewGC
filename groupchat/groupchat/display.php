<?php 
include('connect.php');
// echo $_POST["message"];
$sql = "
    SELECT groupmsg.message_content, users.firstname, users.middlename, users.lastname
    FROM groupmsg
    JOIN users ON groupmsg.sender = users.registration_order_no
    
";

// Execute the query
$result = mysqli_query($connect, $sql);

// Check if the query execution is successful
if ($result) {
    // Loop through each row in the result set
    while ($row = mysqli_fetch_assoc($result)) {
        // Concatenate the sender's full name
        $sender_fullname = $row['firstname'];
        
      

        // Display the sender's full name and message content
        echo htmlspecialchars($sender_fullname) . ": " . htmlspecialchars($row['message_content']) . "<br>";
    }
} else {
    // Output an error message if the query failed
    echo "Error fetching messages: " . mysqli_error($connect);
}


?>