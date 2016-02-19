<?php
    date_default_timezone_set('Asia/Manila');
    
    require_once('connection.php');

    $connection = new Connection();
    $connection->open();

    $action = $connection->escape_string($_POST['action']);

    if($action == 'Add') {
        $facultyID = $connection->escape_string($_POST['facultyID']);
        $facultyPassword = md5($connection->escape_string($_POST['facultyPassword']));
        $facultyFirstName = $connection->escape_string($_POST['facultyFirstName']);
        $facultyMiddleName = $connection->escape_string($_POST['facultyMiddleName']);
        $facultyLastName = $connection->escape_string($_POST['facultyLastName']);
        $facultyType = $connection->escape_string($_POST['facultyType']);

        $connection->query("SELECT * FROM faculties WHERE Faculty_ID='$facultyID'");

        if($connection->num_rows() == 0) {
            $connection->query("SELECT * FROM faculties WHERE Faculty_First_Name='$facultyFirstName' AND Faculty_Last_Name='$facultyLastName'");

            if($connection->num_rows() == 0) {
                $connection->query("INSERT INTO faculties (Faculty_ID, Faculty_Password, Faculty_First_Name, Faculty_Middle_Name, Faculty_Last_Name) VALUES ('$facultyID', '$facultyPassword', '$facultyFirstName', '$facultyMiddleName', '$facultyLastName')");

                if($connection->affected_rows() == 1) {
                    $connection->query("INSERT INTO accounts (Account_ID, Account_Type) VALUES ('$facultyID', '$facultyType')");

                    echo json_encode(array('status' => 'Success', 'message' => 'The faculty has been added.'));
                } else {
                    echo json_encode(array('status' => 'Failed', 'message' => 'Failed to add faculty.'));
                }
            } else {
                echo json_encode(array('status' => 'Failed', 'message' => 'This faculty already exists.'));
            }
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'This faculty id already exists.'));
        }
    } else if($action == 'Edit') {
        $id = $connection->escape_string($_POST['id']);
        $facultyID = $connection->escape_string($_POST['facultyID']);
        $facultyFirstName = $connection->escape_string($_POST['facultyFirstName']);
        $facultyMiddleName = $connection->escape_string($_POST['facultyMiddleName']);
        $facultyLastName = $connection->escape_string($_POST['facultyLastName']);
        $facultyType = $connection->escape_string($_POST['facultyType']);

        $connection->query("SELECT * FROM faculties WHERE Faculty_ID='$id'");

        if($connection->num_rows() == 1) {
            $ctr = 0;

            $connection->query("UPDATE faculties SET Faculty_ID='$facultyID', Faculty_First_Name='$facultyFirstName', Faculty_Middle_Name='$facultyMiddleName', Faculty_Last_Name='$facultyLastName' WHERE Faculty_ID='$id'");

            if($connection->affected_rows() == 1) {
                $ctr++;
            }

            $connection->query("UPDATE accounts SET Account_ID='$facultyID', Account_Type='$facultyType' WHERE Account_ID='$id'");

            if($connection->affected_rows() == 1) {
                $ctr++;
            }

            if($ctr > 0) {
                echo json_encode(array('status' => 'Success', 'message' => 'The faculty has been updated.'));
            } else {
                echo json_encode(array('status' => 'Failed', 'message' => 'No changes has been made.'));
            }
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'Faculty not found.'));
        }
    } else if($action == 'Delete') {
        $ctr = 0;
        $id = $connection->escape_string($_POST['id']);

        $connection->query("DELETE FROM faculties WHERE Faculty_ID='$id'");

        if($connection->affected_rows() == 1) {
            $ctr++;
        }

        $connection->query("DELETE FROM accounts WHERE Account_ID='$id'");

        if($connection->affected_rows() == 1) {
            $ctr++;
        }

        if($ctr == 2) {
            echo json_encode(array('status' => 'Success', 'message' => 'The faculty has been deleted.'));
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'Failed to delete faculty.'));
        }
    } else {
        echo json_encode(array('status' => 'Failed', 'message' => 'Please specify a valid action.'));
    }

    $connection->close();
?>