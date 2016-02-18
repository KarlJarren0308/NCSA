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
            require_once('control_panel_settings.php');
            require_once('functions.php');

            $connection = new Connection();
            $connection->open();

            $settings = new ControlPanelSettings('../');

            $borrowID = $connection->escape_string($_GET['data']);

            $connection->query("SELECT * FROM borrow WHERE Borrow_ID='$borrowID'");
            $rowLoan = $connection->fetch_assoc();

            $borrower = $rowLoan['Borrowers_ID'];
            $librarian = $rowLoan['Librarian_ID'];

            $connection->query("SELECT * FROM accounts LEFT JOIN faculties ON accounts.Account_ID=faculties.Faculty_ID LEFT JOIN students ON accounts.Account_ID=students.Student_ID WHERE accounts.Account_ID='$borrower'");
            $row = $connection->fetch_assoc();

            if($row['Account_Type'] == 'Student') {
                $type = 'Student';
                $days = $settings->getSetting('studentLoanPeriod');
            } else {
                $type = 'Faculty';
                $days = $settings->getSetting('facultyLoanPeriod');
            }

            if(strlen($row[$type . '_Middle_Name']) > 1) {
                $name = $row[$type . '_First_Name'] . ' ' . substr($row[$type . '_Middle_Name'], 0, 1) . '. ' . $row[$type . '_Last_Name'];
            } else {
                $name = $row[$type . '_First_Name'] . ' ' . $row[$type . '_Last_Name'];
            }

            echo '<div>Borrower: <span class="typewriter">' . $name . '</span></div>';
            echo '<div>Date Borrowed: ' . date('F d, Y', strtotime($rowLoan['Date_Borrowed'])) . '</div>';

            $dueDate = date('F d, Y', strtotime('+' . $days . ' days', strtotime($rowLoan['Date_Borrowed'])));
            $dueDays = ceil((strtotime($dueDate) - strtotime($rowLoan['Date_Borrowed'])) / 86400);
            $i = 1;

            while($i <= $dueDays) {
                $currentDate = date('Y-m-d', strtotime('+' . $i . ' days', strtotime($rowLoan['Date_Borrowed'])));

                if(isWeekend($currentDate)) {
                    $dueDays++;
                    $dueDate = nextDay($dueDate);
                } else {
                    if(isHoliday($connection, $currentDate)) {
                        $dueDays++;
                        $dueDate = nextDay($dueDate);
                    }
                }

                $i++;
            }

            echo '<div>Due Date: ' . date('F d, Y', strtotime($dueDate)) . '</div>';
            echo '<br>';
            echo 'Borrowed Material(s):';
            echo '<ul class="typewriter beautify">';

            $connection->query("SELECT * FROM borrow_details INNER JOIN borrow ON borrow_details.Borrow_ID=borrow.Borrow_ID INNER JOIN barcodes ON borrow_details.Barcode_Number=barcodes.Barcode_Number INNER JOIN materials ON barcodes.Material_ID=materials.Material_ID WHERE borrow.Borrow_ID='$borrowID'");

            while($row = $connection->fetch_assoc()) {
                echo '<li>' . $row['Barcode_Number'] . ': ' . $row['Material_Title'] . '</li>';
            }

            echo '</ul>';
            echo '<br><br><br>';
            echo '<div class="align-center">';

            $connection->query("SELECT * FROM faculties WHERE Faculty_ID='$librarian'");
            $row = $connection->fetch_assoc();

            if(strlen($row['Faculty_Middle_Name']) > 1) {
                $name = $row['Faculty_First_Name'] . ' ' . substr($row['Faculty_Middle_Name'], 0, 1) . '. ' . $row['Faculty_Last_Name'];
            } else {
                $name = $row['Faculty_First_Name'] . ' ' . $row['Faculty_Last_Name'];
            }

            echo '<div class="underscore typewriter">' . $name . '</div>';
            echo '<div>Librarian\'s Signature over printed name.</div>';
            echo '</div>';

            $connection->close();
        ?>
    </div>
</body>
</html>