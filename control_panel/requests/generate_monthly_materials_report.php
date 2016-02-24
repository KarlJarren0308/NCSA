<?php
    date_default_timezone_set('Asia/Manila');

    require_once('pdf_generate_monthly_materials_report.php');
    require_once('connection.php');

    $connection = new Connection();
    $connection->open();
    $connection2 = new Connection();
    $connection2->open();

    $date = $connection->escape_string($_GET['date']);

    $pdf = new PDF_Generate_Monthly_Materials_Report('L', 'mm', 'Letter');

    $pdf->AliasNbPages();
    $pdf->AddPage();
    $pdf->SetFont('Arial', '', 8);

    $connection->query("SELECT * FROM materials INNER JOIN publishers ON materials.Publisher_ID=publishers.Publisher_ID INNER JOIN categories ON materials.Category_ID=categories.Category_ID WHERE materials.Date_Added LIKE '$date%'");

    while($row = $connection->fetch_assoc()) {
        $authors = '';
        $isFirst = true;

        $connection2->query("SELECT * FROM works INNER JOIN authors ON works.Author_ID=authors.Author_ID WHERE works.Material_ID='$row[Material_ID]'");

        while($row2 = $connection2->fetch_assoc()) {
            if($isFirst) {
                $authors .= $row2['Author_First_Name'] . ' ' . $row2['Author_Last_Name'];
                $isFirst = false;
            } else {
                $authors .= ', ' . $row2['Author_First_Name'] . ' ' . $row2['Author_Last_Name'];
            }
        }

        $pdf->Row(array($row['Material_Title'], $row['Collection_Type'], $row['ISBN'], $row['Call_Number'], $row['Quantity'], $row['Publisher_Name'], $row['Category'], $authors));
    }

    $pdf->Output();

    $connection2->close();
    $connection->close();
?>