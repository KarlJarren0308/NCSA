<?php
    session_start();
?>
<form data-form="add-faculty-form">
    <label>Faculty ID:</label>
    <div class="input-control text full-size">
        <input type="text" name="facultyID" autofocus>
    </div>
    <label>Password:</label>
    <div class="input-control password full-size">
        <input type="password" name="facultyPassword">
    </div>
    <br><br>
    <label>First Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="facultyFirstName">
    </div>
    <label>Middle Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="facultyMiddleName">
    </div>
    <label>Last Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="facultyLastName">
    </div>
    <label>Type:</label>
    <div class="input-control select full-size">
        <select name="facultyType">
            <option value="" selected disabled>Choose an option...</option>
            <?php
                if(isset($_SESSION['account_username']) && $_SESSION['account_type'] == 'Administrator') {
                    echo '<option value="Administrator">Administrator</option>';
                }
            ?>
            <option value="Principal">Principal</option>
            <option value="Librarian">Librarian</option>
            <option value="Cashier">Cashier</option>
        </select>
    </div>
    <div class="align-right">
        <input type="submit" class="button primary" value="Add">
    </div>
</form>