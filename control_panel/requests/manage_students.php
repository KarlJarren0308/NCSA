<?php
    date_default_timezone_set('Asia/Manila');
    
    require_once('connection.php');

    $connection = new Connection();
    $connection->open();

    $action = $connection->escape_string($_POST['action']);

    if($action == 'Add') {
        $studentID = $connection->escape_string($_POST['studentID']);
        $studentPassword = md5($connection->escape_string($_POST['studentPassword']));
        $studentFirstName = $connection->escape_string($_POST['studentFirstName']);
        $studentMiddleName = $connection->escape_string($_POST['studentMiddleName']);
        $studentLastName = $connection->escape_string($_POST['studentLastName']);
        $yearLevel = $connection->escape_string($_POST['yearLevel']);

        $connection->query("SELECT * FROM students WHERE Student_ID='$studentID'");

        if($connection->num_rows() == 0) {
            $connection->query("SELECT * FROM students WHERE Student_First_Name='$studentFirstName' AND Student_Last_Name='$studentLastName'");

            if($connection->num_rows() == 0) {
                $connection->query("INSERT INTO students (Student_ID, Student_Password, Student_First_Name, Student_Middle_Name, Student_Last_Name, Year_Level) VALUES ('$studentID', '$studentPassword', '$studentFirstName', '$studentMiddleName', '$studentLastName', '$yearLevel')");

                if($connection->affected_rows() == 1) {
                    $connection->query("INSERT INTO accounts (Account_ID, Account_Type) VALUES ('$studentID', 'Student')");

                    echo json_encode(array('status' => 'Success', 'message' => 'The student has been added.'));
                } else {
                    echo json_encode(array('status' => 'Failed', 'message' => 'Failed to add student.'));
                }
            } else {
                echo json_encode(array('status' => 'Failed', 'message' => 'This student already exists.'));
            }
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'This student id already exists.'));
        }
    } else if($action == 'Edit') {
        $id = $connection->escape_string($_POST['id']);
        $studentID = $connection->escape_string($_POST['studentID']);
        $studentFirstName = $connection->escape_string($_POST['studentFirstName']);
        $studentMiddleName = $connection->escape_string($_POST['studentMiddleName']);
        $studentLastName = $connection->escape_string($_POST['studentLastName']);
        $yearLevel = $connection->escape_string($_POST['yearLevel']);

        $connection->query("SELECT * FROM students WHERE Student_ID='$id'");

        if($connection->num_rows() == 1) {
            $ctr = 0;

            $connection->query("UPDATE students SET Student_ID='$studentID', Student_First_Name='$studentFirstName', Student_Middle_Name='$studentMiddleName', Student_Last_Name='$studentLastName', Year_Level='$yearLevel' WHERE Student_ID='$id'");

            if($connection->affected_rows() == 1) {
                $ctr++;
            }

            $connection->query("UPDATE accounts SET Account_ID='$studentID', Account_Type='Student' WHERE Account_ID='$id'");

            if($connection->affected_rows() == 1) {
                $ctr++;
            }

            if($ctr > 0) {
                echo json_encode(array('status' => 'Success', 'message' => 'The students has been updated.'));
            } else {
                echo json_encode(array('status' => 'Failed', 'message' => 'No changes has been made.'));
            }
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'Faculty not found.'));
        }
    } else if($action == 'Delete') {
        $ctr = 0;
        $id = $connection->escape_string($_POST['id']);

        $connection->query("DELETE FROM students WHERE Student_ID='$id'");

        if($connection->affected_rows() == 1) {
            $ctr++;
        }

        $connection->query("DELETE FROM accounts WHERE Account_ID='$id'");

        if($connection->affected_rows() == 1) {
            $ctr++;
        }

        if($ctr == 2) {
            echo json_encode(array('status' => 'Success', 'message' => 'The student has been deleted.'));
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'Failed to delete student.'));
        }
    } else {
        echo json_encode(array('status' => 'Failed', 'message' => 'Please specify a valid action.'));
    }

    $connection->close();
?>