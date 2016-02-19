<?php
    date_default_timezone_set('Asia/Manila');
    session_start();

    require_once('connection.php');
    require_once('control_panel_settings.php');

    $connection = new Connection();
    $connection->open();

    $settings = new ControlPanelSettings('../');

    $id = $connection->escape_string($_POST['id']);
    $penalty = 0;

    $connection->query("SELECT *, borrow_details.Status AS Borrow_Details_Status FROM borrow_details INNER JOIN borrow ON borrow_details.Borrow_ID=borrow.Borrow_ID INNER JOIN barcodes ON borrow_details.Barcode_Number=barcodes.Barcode_Number INNER JOIN materials ON barcodes.Material_ID=materials.Material_ID WHERE borrow.Borrowers_ID='$id'");

    while($row = $connection->fetch_assoc()) {
        if(strtotime(date('Y-m-d')) > strtotime($row['Due_Date'])) {
            $penalty = ((strtotime(date('Y-m-d')) - strtotime($row['Due_Date'])) / 86400) * (double) $settings->getSetting('penalty');
        } else {
            $penalty = 0;
        }

        echo '<tr>';
        echo '<td>' . $row['Barcode_Number'] . '</td>';
        echo '<td>' . $row['Material_Title'] . '</td>';
        echo '<td>' . $row['Collection_Type'] . '</td>';
        echo '<td>' . date('F d, Y', strtotime($row['Date_Borrowed'])) . '</td>';
        echo '<td>' . date('F d, Y', strtotime($row['Due_Date'])) . '</td>';
        echo '<td>' . $penalty . '</td>';
        
        if(isset($_SESSION['account_username'])) {
            if($row['Borrow_Details_Status'] == 'active') {
                echo '<td class="align-center"><a class="button primary mini-button beautify" data-button="return-material-button" data-var-id="' . $row['Borrow_Details_ID'] . '" data-role="hint" data-hint="Return Material" data-hint-background="#dc4fad" data-hint-color="#ffffff" data-hint-mode="2" data-hint-position="top"><span class="mif mif-undo"></span></a></td>';
            } else {
                echo '<td class="align-center"><a href="javascript:void(0);" class="button mini-button beautify" data-role="hint" data-hint="Returned" data-hint-background="#dc4fad" data-hint-color="#ffffff" data-hint-mode="2" data-hint-position="top"><span class="mif mif-checkmark"></span></a></td>';
            }
        }

        echo '</tr>';
    }

    $connection->close();
?>