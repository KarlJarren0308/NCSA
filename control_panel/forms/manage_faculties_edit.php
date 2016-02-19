<?php
    session_start();

    require_once('../requests/connection.php');

    $connection = new Connection();
    $connection->open();

    $id = $connection->escape_string($_POST['id']);

    $connection->query("SELECT * FROM accounts INNER JOIN faculties ON accounts.Account_ID=faculties.Faculty_ID WHERE accounts.Account_ID='$id'");
    $row = $connection->fetch_assoc();

    $connection->close();
?>
<form data-form="edit-faculty-form">
    <input type="hidden" name="id" value="<?php echo $row['Faculty_ID']; ?>">
    <label>Faculty ID:</label>
    <div class="input-control text full-size">
        <input type="text" name="facultyID" value="<?php echo $row['Faculty_ID']; ?>" autofocus>
    </div>
    <br><br>
    <label>First Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="facultyFirstName" value="<?php echo $row['Faculty_First_Name']; ?>" autofocus>
    </div>
    <label>Middle Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="facultyMiddleName" value="<?php echo $row['Faculty_Middle_Name']; ?>">
    </div>
    <label>Last Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="facultyLastName" value="<?php echo $row['Faculty_Last_Name']; ?>">
    </div>
    <label>Type:</label>
    <div class="input-control select full-size">
        <select name="facultyType">
            <?php
                echo '<option value="" disabled>Choose an option...</option>';

                if(isset($_SESSION['account_username']) && $_SESSION['account_type'] == 'Administrator') {
                    echo '<option value="Administrator"' . ($row['Account_Type'] == 'Administrator' ? ' selected' : '') . '>Administrator</option>';
                }

                echo '<option value="President"' . ($row['Account_Type'] == 'Principal' ? ' selected' : '') . '>Principal</option>';
                echo '<option value="Librarian"' . ($row['Account_Type'] == 'Librarian' ? ' selected' : '') . '>Librarian</option>';
                echo '<option value="Cashier"' . ($row['Account_Type'] == 'Cashier' ? ' selected' : '') . '>Cashier</option>';
            ?>
        </select>
    </div>
    <div class="align-right">
        <input type="submit" class="button primary" value="Edit">
    </div>
</form>