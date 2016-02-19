<?php
    date_default_timezone_set('Asia/Manila');
    
    function generateBarcode($materialID, $quantity) {
        global $connection;

        $i = 0;
        $rand = mt_rand(0, 9) . ' ' . mt_rand(0, 9) . mt_rand(0, 9) . mt_rand(0, 9) . mt_rand(0, 9) . mt_rand(0, 9) . ' ' . mt_rand(0, 9) . mt_rand(0, 9) . mt_rand(0, 9) . ' ' . mt_rand(0, 9);

        while($i <= $quantity) {
            $connection->query("SELECT * FROM barcodes WHERE Material_ID='$materialID' ORDER BY Accession_Number DESC");

            if($connection->num_rows() > 0) {
                $row = $connection->fetch_assoc();
                $i = $row['Accession_Number'] + 1;
            } else {
                $i = 1;
            }

            $connection->query("SELECT * FROM barcodes WHERE Barcode_Number='$rand'");

            if($connection->num_rows() == 1) {
                generateBarcode($materialID, $quantity - $i);
            } else {
                $connection->query("INSERT INTO barcodes (Material_ID, Barcode_Number, Accession_Number) VALUES ('$materialID', '$rand', '$i')");

                $i++;
            }
        }
    }

    require_once('connection.php');

    $connection = new Connection();
    $connection->open();

    $action = $connection->escape_string($_POST['action']);

    if($action == 'Add') {
        $materialTitle = $connection->escape_string($_POST['materialTitle']);
        $collectionType = $connection->escape_string($_POST['collectionType']);
        $isbn = $connection->escape_string($_POST['isbn']);
        $callNumber = $connection->escape_string($_POST['callNumber']);
        $datePublishedMonth = $connection->escape_string($_POST['datePublishedMonth']);
        $datePublishedDay = $connection->escape_string($_POST['datePublishedDay']);
        $datePublishedYear = $connection->escape_string($_POST['datePublishedYear']);
        $quantity = $connection->escape_string($_POST['quantity']);
        $publisher = $connection->escape_string($_POST['publisher']);
        $category = $connection->escape_string($_POST['category']);
        $authors = $_POST['authors'];
        $datePublished = $datePublishedYear . '-' . $datePublishedMonth . '-' . $datePublishedDay;
        $datetime = date('Y-m-d');

        $connection->query("SELECT * FROM materials WHERE Material_Title='$materialTitle'");

        if($connection->num_rows() == 0) {
            $connection->query("INSERT INTO materials (Material_Title, Collection_Type, ISBN, Call_Number, Date_Published, Date_Added, Quantity, Publisher_ID, Category_ID) VALUES ('$materialTitle', '$collectionType', '$isbn', '$callNumber', '$datePublished', '$datetime', '$quantity', '$publisher', '$category')");

            if($connection->affected_rows() == 1) {
                $connection->query("SELECT * FROM materials WHERE Material_Title='$materialTitle'");
                $materialID = $connection->fetch_assoc()['Material_ID'];

                foreach($authors as $authorID) {
                    $authorID = $connection->escape_string($authorID);

                    $connection->query("INSERT INTO works (Material_ID, Author_ID) VALUES ('$materialID', '$authorID')");
                }

                generateBarcode($materialID, $quantity);

                echo json_encode(array('status' =>  'Success', 'message' => 'The material has been added.'));
            } else {
                echo json_encode(array('status' => 'Failed', 'message' => 'Failed to add material.'));
            }
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'This material already exists.'));
        }
    } else if($action == 'Edit') {
        $id = $connection->escape_string($_POST['id']);
        $materialTitle = $connection->escape_string($_POST['materialTitle']);
        $collectionType = $connection->escape_string($_POST['collectionType']);
        $isbn = $connection->escape_string($_POST['isbn']);
        $callNumber = $connection->escape_string($_POST['callNumber']);
        $datePublishedMonth = $connection->escape_string($_POST['datePublishedMonth']);
        $datePublishedDay = $connection->escape_string($_POST['datePublishedDay']);
        $datePublishedYear = $connection->escape_string($_POST['datePublishedYear']);
        $publisher = $connection->escape_string($_POST['publisher']);
        $category = $connection->escape_string($_POST['category']);
        $authors = $_POST['authors'];
        $datePublished = $datePublishedYear . '-' . $datePublishedMonth . '-' . $datePublishedDay;
        $datetime = date('Y-m-d');
        $ctr = 0;

        $connection->query("UPDATE materials SET Material_Title='$materialTitle', Collection_Type='$collectionType', ISBN='$isbn', Call_Number='$callNumber', Date_Published='$datePublished', Date_Added='$datetime', Publisher_ID='$publisher', Category_ID='$category' WHERE Material_ID='$id'");

        if($connection->affected_rows() == 1) {
            $ctr++;
        }

        $connection->query("DELETE FROM works WHERE Material_ID='$id'");

        foreach($authors as $authorID) {
            $authorID = $connection->escape_string($authorID);

            $connection->query("INSERT INTO works (Material_ID, Author_ID) VALUES ('$id', '$authorID')");

            if($connection->affected_rows() == 1) {
                $ctr++;
            }
        }

        if($ctr > 0) {
            echo json_encode(array('status' =>  'Success', 'message' => 'The material has been updated.'));
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'No changes has been made.'));
        }
    } else if($action == 'Delete') {
        $id = $connection->escape_string($_POST['id']);
        $datetime = date('Y-m-d');

        $connection->query("UPDATE materials SET Status='inactive' WHERE Material_ID='$id'");

        if($connection->affected_rows() == 1) {
            $connection->query("INSERT INTO weeding (Material_ID, Reason, Date_Weeded) VALUES ('$id', '', '$datetime')");

            echo json_encode(array('status' => 'Success', 'message' => 'The material has been deleted.'));
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'Failed to delete material.'));
        }
    } else if($action == 'Restore') {
        $id = $connection->escape_string($_POST['id']);

        $connection->query("UPDATE materials SET Status='active' WHERE Material_ID='$id'");

        if($connection->affected_rows() == 1) {
            $connection->query("DELETE FROM weeding WHERE Material_ID='$id'");

            echo json_encode(array('status' => 'Success', 'message' => 'The material has been restored.'));
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'Failed to restore material.'));
        }
    } else {
        echo json_encode(array('status' => 'Failed', 'message' => 'Please specify a valid action.'));
    }

    $connection->close();
?>