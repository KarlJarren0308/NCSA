<?php
    date_default_timezone_set('Asia/Manila');
    session_start();

    function computePenalty($id) {
        global $settings;
        global $connection;

        $penalty = 0;

        $connection->query("SELECT * FROM borrow INNER JOIN borrow_details ON borrow.Borrow_ID=borrow_details.Borrow_ID WHERE borrow_details.Borrow_Details_ID='$id'");
        $row = $connection->fetch_assoc();

        if(strtotime(date('Y-m-d')) > strtotime($row['Due_Date'])) {
            $penalty = ((strtotime(date('Y-m-d')) - strtotime($row['Due_Date'])) / 86400) * (double) $settings->getSetting('penalty');
        }

        return $penalty;
    }

    require_once('connection.php');
    require_once('control_panel_settings.php');

    $connection = new Connection();
    $connection->open();

    $settings = new ControlPanelSettings('../');

    $id = $connection->escape_string($_POST['id']);
    $datetime = date('Y-m-d H:i:s');

    $connection->query("UPDATE borrow_details SET Status='inactive' WHERE Borrow_Details_ID='$id'");

    if($connection->affected_rows() == 1) {
        $connection->query("INSERT INTO `return` (Borrow_Details_ID, Date_Returned) VALUES ('$id', '$datetime')");

        if($connection->affected_rows() == 1) {
            $connection->query("SELECT * FROM borrow_details WHERE Borrow_Details_ID='$id'");
            $rowDetails = $connection->fetch_assoc();
            $barcode = $row['Barcode_Number'];

            $connection->query("UPDATE barcodes SET Availability='true' WHERE Barcode_Number='$barcode'");

            $connection->query("SELECT * FROM `return` WHERE Borrow_Details_ID='$id'");
            $row = $connection->fetch_assoc();
            $returnID = $row['Return_ID'];

            $penalty = computePenalty($id);

            $connection->query("INSERT INTO penalties (Return_ID, Penalty, Date_of_Payment, Status) VALUES ('$returnID', '$penalty', '$datetime', 'inactive')");

            if($connection->affected_rows() == 1) {
                echo json_encode(array('status' => 'Success', 'message' => 'You successfully returned a material.'));
            } else {
                echo json_encode(array('status' => 'Failed', 'message' => 'Failed to settle penalty.'));
            }
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'Oops! Something went wrong... ' . $connection->show_error()));
        }
    } else {
        echo json_encode(array('status' => 'Failed', 'message' => 'Failed to return material.'));
    }

    $connection->close();
?>