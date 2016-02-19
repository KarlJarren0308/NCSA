<?php
    require_once('../requests/connection.php');

    $connection = new Connection();
    $connection->open();

    $id = $connection->escape_string($_POST['id']);

    $connection->query("SELECT * FROM accounts INNER JOIN students ON accounts.Account_ID=students.Student_ID WHERE accounts.Account_ID='$id'");
    $row = $connection->fetch_assoc();

    $connection->close();
?>
<form data-form="edit-student-form">
    <input type="hidden" name="id" value="<?php echo $row['Student_ID']; ?>">
    <label>Student ID:</label>
    <div class="input-control text full-size">
        <input type="text" name="studentID" value="<?php echo $row['Student_ID']; ?>" autofocus>
    </div>
    <br><br>
    <label>First Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="studentFirstName" value="<?php echo $row['Student_First_Name']; ?>">
    </div>
    <label>Middle Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="studentMiddleName" value="<?php echo $row['Student_Middle_Name']; ?>">
    </div>
    <label>Last Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="studentLastName" value="<?php echo $row['Student_Last_Name']; ?>">
    </div>
    <label>Year Level:</label>
    <div class="input-control select full-size">
        <select name="yearLevel">
            <?php
                echo '<option value="" disabled>Choose an option...</option>';
                echo '<option value="Nursery"' . ($row['Year_Level'] == 'Nursery' ? ' selected' : '') . '>Nursery</option>';
                echo '<option value="Kindergarten"' . ($row['Year_Level'] == 'Kindergarten' ? ' selected' : '') . '>Kindergarten</option>';
                echo '<option value="Preparatory"' . ($row['Year_Level'] == 'Preparatory' ? ' selected' : '') . '>Preparatory</option>';
                echo '<option value="Grade 1"' . ($row['Year_Level'] == 'Grade 1' ? ' selected' : '') . '>Grade 1</option>';
                echo '<option value="Grade 2"' . ($row['Year_Level'] == 'Grade 2' ? ' selected' : '') . '>Grade 2</option>';
                echo '<option value="Grade 3"' . ($row['Year_Level'] == 'Grade 3' ? ' selected' : '') . '>Grade 3</option>';
                echo '<option value="Grade 4"' . ($row['Year_Level'] == 'Grade 4' ? ' selected' : '') . '>Grade 4</option>';
                echo '<option value="Grade 5"' . ($row['Year_Level'] == 'Grade 5' ? ' selected' : '') . '>Grade 5</option>';
                echo '<option value="Grade 6"' . ($row['Year_Level'] == 'Grade 6' ? ' selected' : '') . '>Grade 6</option>';
                echo '<option value="First Year HS"' . ($row['Year_Level'] == 'First Year HS' ? ' selected' : '') . '>First Year HS</option>';
                echo '<option value="Second Year HS"' . ($row['Year_Level'] == 'Second Year HS' ? ' selected' : '') . '>Second Year HS</option>';
                echo '<option value="Third Year HS"' . ($row['Year_Level'] == 'Third Year HS' ? ' selected' : '') . '>Third Year HS</option>';
                echo '<option value="Fourth Year HS"' . ($row['Year_Level'] == 'Fourth Year HS' ? ' selected' : '') . '>Fourth Year HS</option>';
            ?>
        </select>
    </div>
    <div class="align-right">
        <input type="submit" class="button primary" value="Edit">
    </div>
</form>