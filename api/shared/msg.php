<?php

function message($tipo,$message) {
    global $output_msg;
    $output_msg=$message;
    switch ($tipo) {
        case 1:
            echo "<html><header>";
            echo "<link rel='stylesheet' type='text/css' href='mystyle.css'>";
            echo "<script> function goBack() {window.history.back() }</script>";
            echo "<header><body>";
            echo "<span class='nav-item'><h2>' . $message . '</h2></span>";
            echo "<button onclick='goBack()'>Go Back</button>";
            echo "<html><body>";
            break;
        case 2:
            echo json_encode(array("message" => $message));
            break;
        default:
            // echo " ";    
    }
        
}  

?>

    