<?php
// Include your database connection script
include('connect.php');

if(isset($_POST['message']) && isset($_POST['sender'])){
    $message= $_POST['message'];
    $registration_order_no = $_POST['sender'];
    $messageInsert = mysqli_query($connect, "INSERT INTO groupmsg (message_content, sender) VALUES ('$message', '$registration_order_no')");
}
?>
