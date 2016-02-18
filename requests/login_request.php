<?php
    date_default_timezone_set('Asia/Manila');
    session_start();

    require_once('connection.php');

    $connection = new Connection();
    $connection->open();

    $username = $connection->escape_string($_POST['username']);
    $password = $connection->escape_string($_POST['password']);

    if($username != '' && $password != '') {
        $password = md5($password);
        $connection->query("SELECT * FROM accounts WHERE Account_ID='$username'");

        if($connection->num_rows() == 1) {
            $accountType = $connection->fetch_assoc()['Account_Type'];

            if($accountType == 'Student') {
                $connection->query("SELECT * FROM students WHERE Student_ID='$username' AND Student_Password='$password'");

                if($connection->num_rows() == 1) {
                    $row = $connection->fetch_assoc();

                    $_SESSION['account_username'] = $row['Student_ID'];
                    $_SESSION['account_first_name'] = $row['Student_First_Name'];
                    $_SESSION['account_middle_name'] = $row['Student_Middle_Name'];
                    $_SESSION['account_last_name'] = $row['Student_Last_Name'];
                    $_SESSION['account_image'] = $row['Image'];
                    $_SESSION['account_type'] = $accountType;
                    $dateStamp = date('Y-m-d');
                    $timeStamp = date('H:i:s');

                    $connection->query("SELECT * FROM attendance WHERE Account_ID='$row[Student_ID]' AND Date_Stamp='$dateStamp'");

                    if($connection->num_rows() == 0) {
                        $connection->query("INSERT INTO attendance (Account_ID, Date_Stamp, Time_Stamp) VALUES ('$row[Student_ID]', '$dateStamp', '$timeStamp')");
                    }

                    echo json_encode(array('status' => 'Success', 'message' => 'Login Successful. Please Wait...', 'redirect' => './'));
                } else {
                    echo json_encode(array('status' => 'Failed', 'message' => 'Invalid Username and/or Password.'));
                }
            } else {
                $connection->query("SELECT * FROM faculties WHERE Faculty_ID='$username' AND Faculty_Password='$password'");

                if($connection->num_rows() == 1) {
                    $row = $connection->fetch_assoc();
                    
                    $_SESSION['account_username'] = $row['Faculty_ID'];
                    $_SESSION['account_first_name'] = $row['Faculty_First_Name'];
                    $_SESSION['account_middle_name'] = $row['Faculty_Middle_Name'];
                    $_SESSION['account_last_name'] = $row['Faculty_Last_Name'];
                    $_SESSION['account_image'] = $row['Image'];
                    $_SESSION['account_type'] = $accountType;
                    $dateStamp = date('Y-m-d');
                    $timeStamp = date('H:i:s');

                    $connection->query("SELECT * FROM attendance WHERE Account_ID='$row[Faculty_ID]' AND Date_Stamp='$dateStamp'");

                    if($connection->num_rows() == 0) {
                        $connection->query("INSERT INTO attendance (Account_ID, Date_Stamp, Time_Stamp) VALUES ('$row[Faculty_ID]', '$dateStamp', '$timeStamp')");
                    }

                    echo json_encode(array('status' => 'Success', 'message' => 'Login Successful. Please Wait...', 'redirect' => './control_panel'));
                } else {
                    echo json_encode(array('status' => 'Failed', 'message' => 'Invalid Username and/or Password.'));
                }
            }
        } else {
            echo json_encode(array('status' => 'Failed', 'message' => 'Account doesn\'t exist.'));
        }
    } else {
        echo json_encode(array('status' => 'Failed', 'message' => 'Both username and password is required.'));
    }

    $connection->close();
?>