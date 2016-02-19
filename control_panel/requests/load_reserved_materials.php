<?php
    date_default_timezone_set('Asia/Manila');
    session_start();

    require_once('connection.php');

    $connection = new Connection();
    $connection->open();

    $id = $connection->escape_string($_POST['id']);

    $connection->query("SELECT * FROM reservations INNER JOIN materials ON reservations.Material_ID=materials.Material_ID WHERE reservations.Borrowers_ID='$id' AND reservations.Status='active' AND materials.Status='active'");

    while($row = $connection->fetch_assoc()) {
        echo '<tr>';
        echo '<td>' . $row['Material_Title'] . '</td>';
        echo '<td>' . $row['Collection_Type'] . '</td>';
        echo '<td>' . date('F d, Y', strtotime($row['Date_Reserved'])) . '</td>';

        if(isset($_SESSION['account_username'])) {
            echo '<td class="align-center">';
            echo '<label class="input-control checkbox small-check">';
            echo '<input data-input="loan-checkbox" data-var-id="' . $row['Material_ID'] . '" type="checkbox">';
            echo '<span class="check"></span><span class="caption"></span>';
            echo '</label>';
            echo '</td>';
        }

        echo '</tr>';
    }

    $connection->close();
?>