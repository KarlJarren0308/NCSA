<?php
    date_default_timezone_set('Asia/Manila');

    require_once('pdf_generate_students_report.php');
    require_once('connection.php');
    require_once('control_panel_settings.php');
    require_once('functions.php');

    $connection = new Connection();
    $connection->open();
    $connection2 = new Connection();
    $connection2->open();

    $settings = new ControlPanelSettings('../');
    $pdf = new PDF_Generate_Students_Report('P', 'mm', 'Letter');

    $pdf->AliasNbPages();
    $pdf->AddPage();
    $pdf->SetFont('Arial', '', 8);

    $connection->query("SELECT * FROM students");

    while($row = $connection->fetch_assoc()) {
        if(strlen($row['Student_Middle_Name']) > 1) {
            $name = $row['Student_First_Name'] . ' ' . substr($row['Student_Middle_Name'], 0, 1) . '. ' . $row['Student_Last_Name'];
        } else {
            $name = $row['Student_First_Name'] . ' ' . $row['Student_Last_Name'];
        }

        $pdf->Row(array($row['Student_ID'], $name, $row['Year_Level']));
    }

    $pdf->Output();

    $connection2->close();
    $connection->close();
?>