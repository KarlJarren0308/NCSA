<?php
    date_default_timezone_set('Asia/Manila');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Control Panel - Nazareth Christian School of Antipolo</title>
    <link rel="shortcut icon" href="assets/img/logo.png">
    <link rel="stylesheet" href="../assets/css/receipt.css">
</head>
<body>
    <div class="box font-4">
        <div class="align-center font-3">NAZARETH CHRISTIAN SCHOOL OF ANTIPOLO</div>
        <div class="align-center">Library System</div>
        <br>
        <?php
            require_once('connection.php');

            $connection = new Connection();
            $connection->open();

            $borrowID = $connection->escape_string($_GET['data']);

            $connection->query("SELECT * FROM borrow WHERE Borrow_ID='$borrowID'");
            $rowLoan = $connection->fetch_assoc();

            $borrower = $rowLoan['Borrowers_ID'];

            $connection->query("SELECT * FROM accounts LEFT JOIN faculties ON accounts.Account_ID=faculties.Faculty_ID LEFT JOIN students ON accounts.Account_ID=students.Student_ID WHERE accounts.Account_ID='$borrower'");
            $row = $connection->fetch_assoc();

            if($row['Account_Type'] == 'Student') {
                $type = 'Student';
            } else {
                $type = 'Faculty';
            }

            if(strlen($row[$type . '_Middle_Name']) > 1) {
                $name = $row[$type . '_First_Name'] . ' ' . substr($row[$type . '_Middle_Name'], 0, 1) . '. ' . $row[$type . '_Last_Name'];
            } else {
                $name = $row[$type . '_First_Name'] . ' ' . $row[$type . '_Last_Name'];
            }

            echo '<div>Borrower: <span class="typewriter">' . $name . '</span></div>';
            echo '<div>Date Borrowed: ' . date('F d, Y', strtotime($rowLoan['Date_Borrowed'])) . '</div>';
            echo '<div>Due Date: ' . date('F d, Y', strtotime($rowLoan['Due_Date'])) . '</div>';
            echo '<br>';
            echo 'Borrowed Material(s):';
            echo '<ul class="typewriter beautify">';

            $connection->query("SELECT * FROM borrow_details INNER JOIN borrow ON borrow_details.Borrow_ID=borrow.Borrow_ID INNER JOIN barcodes ON borrow_details.Barcode_Number=barcodes.Barcode_Number INNER JOIN materials ON barcodes.Material_ID=materials.Material_ID WHERE borrow.Borrow_ID='$borrowID'");

            while($row = $connection->fetch_assoc()) {
                echo '<li>' . $row['Barcode_Number'] . ': ' . $row['Material_Title'] . '</li>';
            }

            echo '</ul>';

            $connection->close();
        ?>
    </div>
</body>
</html>