<?php
    date_default_timezone_set('Asia/Manila');
    session_start();

    require_once('connection.php');
    require_once('control_panel_settings.php');

    $connection = new Connection();
    $connection->open();

    $settings = new ControlPanelSettings('../');

    $username = $_SESSION['account_username'];
    $borrower = $connection->escape_string($_POST['borrower']);
    $materials = $_POST['materials'];
    $datetime = date('Y-m-d H:i:s');
    $ctr = 0;
    $gracePeriod = 0;

    $connection->query("SELECT * FROM accounts WHERE Account_ID='$borrower'");
    $row = $connection->fetch_assoc();

    if($row['Account_Type'] == 'Student') {
        $gracePeriod = $settings->getSetting('studentLoanPeriod');
    } else {
        $gracePeriod = $settings->getSetting('facultyLoanPeriod');
    }

    $dueDate = date('Y-m-d H:i:s', strtotime('+ ' . $gracePeriod . ' days'));

    $connection->query("INSERT INTO borrow (Borrowers_ID, Librarian_ID, Date_Borrowed, Due_Date) VALUES ('$borrower', '$username', '$datetime', '$dueDate')");

    if($connection->affected_rows() == 1) {
        $connection->query("SELECT * FROM borrow WHERE Borrowers_ID='$borrower' AND Librarian_ID='$username' AND Date_Borrowed='$datetime'");
        $row = $connection->fetch_assoc();
        $borrowID = $row['Borrow_ID'];

        foreach($materials as $materialID) {
            $id = $connection->escape_string($materialID);

            $connection->query("SELECT * FROM barcodes WHERE Material_ID='$id' AND Availability='true'");
            $row = $connection->fetch_assoc();
            $barcode = $row['Barcode_Number'];

            $connection->query("UPDATE barcodes SET Availability='false' WHERE Barcode_Number='$barcode'");

            if($connection->affected_rows() == 1) {
                $connection->query("INSERT INTO borrow_details (Borrow_ID, Barcode_Number) VALUES ('$borrowID', '$barcode')");

                if($connection->affected_rows() == 1) {
                    $ctr++;
                }
            }
        }

        if($ctr > 0) {
            $connection->query("UPDATE accounts SET On_Hand+=$ctr WHERE Account_ID='$borrower'");

            if(count($materials) == 1) {
                echo json_encode(array('status' => 'Success', 'message' => 'You successfully borrowed a material.<br><br><div class="align-right"><button class="button primary" data-button="print-button">Print Receipt</button></div>', 'data' => $borrowID));
            } else {
                echo json_encode(array('status' => 'Success', 'message' => 'You successfully borrowed some materials.<br><br><div class="align-right"><button class="button primary" data-button="print-button">Print Receipt</button></div>', 'data' => $borrowID));
            }
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'Oops! Something went wrong...'));
        }
    } else {
        echo json_encode(array('status' => 'Failed', 'message' => 'Failed to borrow material(s).'));
    }

    $connection->close();
?>