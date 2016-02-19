<form data-form="add-student-form">
    <label>Student ID:</label>
    <div class="input-control text full-size">
        <input type="text" name="studentID" autofocus>
    </div>
    <label>Password:</label>
    <div class="input-control password full-size">
        <input type="password" name="studentPassword">
    </div>
    <br><br>
    <label>First Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="studentFirstName">
    </div>
    <label>Middle Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="studentMiddleName">
    </div>
    <label>Last Name:</label>
    <div class="input-control text full-size">
        <input type="text" name="studentLastName">
    </div>
    <label>Year Level:</label>
    <div class="input-control select full-size">
        <select name="yearLevel">
            <option value="" selected disabled>Choose an option...</option>
            <option value="Grade 1">Grade 1</option>
            <option value="Grade 2">Grade 2</option>
            <option value="Grade 3">Grade 3</option>
            <option value="Grade 4">Grade 4</option>
            <option value="Grade 5">Grade 5</option>
            <option value="Grade 6">Grade 6</option>
            <option value="First Year HS">First Year HS</option>
            <option value="Second Year HS">Second Year HS</option>
            <option value="Third Year HS">Third Year HS</option>
            <option value="Fourth Year HS">Fourth Year HS</option>
        </select>
    </div>
    <div class="align-right">
        <input type="submit" class="button primary" value="Add">
    </div>
</form>