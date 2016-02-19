<?php
    require_once('../requests/connection.php');

    $connection = new Connection();
    $connection->open();

    $id = $connection->escape_string($_POST['id']);

    $connection->query("SELECT * FROM materials WHERE Material_ID='$id'");
    $row = $connection->fetch_assoc();
?>
<div id="material-wizard" class="wizard2">
    <div class="step">
        <div class="step-content">
            <input type="hidden" data-input="eID" value="<?php echo $row['Material_ID']; ?>">
            <label>Material Title:</label>
            <div class="input-control text full-size">
                <input data-input="eMaterialTitle" type="text" value="<?php echo $row['Material_Title']; ?>" autofocus>
            </div>
            <label>Collection Type:</label>
            <div class="input-control select full-size">
                <select data-input="eCollectionType">
                    <option value="" selected disabled>Choose an option...</option>
                    <option value="Book"<?php echo ($row['Collection_Type'] == 'Book' ? ' selected' : ''); ?>>Book</option>
                    <option value="Newspaper"<?php echo ($row['Collection_Type'] == 'Newspaper' ? ' selected' : ''); ?>>Newspaper</option>
                    <option value="Magazine"<?php echo ($row['Collection_Type'] == 'Magazine' ? ' selected' : ''); ?>>Magazine</option>
                </select>
            </div>
            <label>ISBN:</label>
            <div class="input-control text full-size">
                <input data-input="eIsbn" value="<?php echo $row['ISBN']; ?>" type="text">
            </div>
        </div>
    </div>
    <div class="step">
        <div class="step-content">
            <label>Call Number:</label>
            <div class="input-control text full-size">
                <input data-input="eCallNumber" value="<?php echo $row['Call_Number']; ?>" type="text">
            </div>
            <label>Date Published:</label>
            <div class="grid condensed no-margin">
                <div class="row cells12">
                    <div class="cell colspan4">
                        <div class="input-control select full-size">
                            <select data-input="eDatePublishedMonth">
                                <option value="01"<?php echo (date('m', strtotime($row['Date_Published'])) == '01' ? ' selected' : ''); ?>>January</option>
                                <option value="02"<?php echo (date('m', strtotime($row['Date_Published'])) == '02' ? ' selected' : ''); ?>>February</option>
                                <option value="03"<?php echo (date('m', strtotime($row['Date_Published'])) == '03' ? ' selected' : ''); ?>>March</option>
                                <option value="04"<?php echo (date('m', strtotime($row['Date_Published'])) == '04' ? ' selected' : ''); ?>>April</option>
                                <option value="05"<?php echo (date('m', strtotime($row['Date_Published'])) == '05' ? ' selected' : ''); ?>>May</option>
                                <option value="06"<?php echo (date('m', strtotime($row['Date_Published'])) == '06' ? ' selected' : ''); ?>>June</option>
                                <option value="07"<?php echo (date('m', strtotime($row['Date_Published'])) == '07' ? ' selected' : ''); ?>>July</option>
                                <option value="08"<?php echo (date('m', strtotime($row['Date_Published'])) == '08' ? ' selected' : ''); ?>>August</option>
                                <option value="09"<?php echo (date('m', strtotime($row['Date_Published'])) == '09' ? ' selected' : ''); ?>>September</option>
                                <option value="10"<?php echo (date('m', strtotime($row['Date_Published'])) == '10' ? ' selected' : ''); ?>>October</option>
                                <option value="11"<?php echo (date('m', strtotime($row['Date_Published'])) == '11' ? ' selected' : ''); ?>>November</option>
                                <option value="12"<?php echo (date('m', strtotime($row['Date_Published'])) == '12' ? ' selected' : ''); ?>>December</option>
                            </select>
                        </div>
                    </div>
                    <div class="cell colspan4">
                        <div class="input-control select full-size">
                            <select data-input="eDatePublishedDay">
                                <?php
                                    for($i = 1; $i <= 31; $i++) {
                                        echo '<option value="' . sprintf('%02d', $i) . '"' . (date('d', strtotime($row['Date_Published'])) == $i ? ' selected' : '') . '>' . sprintf('%02d', $i) . '</option>';
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="cell colspan4">
                        <div class="input-control select full-size">
                            <select data-input="eDatePublishedYear">
                                <?php
                                    for($i = (date('Y') + 20); $i >= 1970; $i--) {
                                        echo '<option value="' . sprintf('%2d', $i) . '"' . (date('Y', strtotime($row['Date_Published'])) == $i ? ' selected' : '') . '>' . sprintf('%02d', $i) . '</option>';
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="step">
        <div class="step-content">
            <label>Publisher:</label>
            <div class="input-control select full-size">
                <select data-input="ePublisher">
                    <option value="" selected disabled>Choose an option...</option>
                    <?php
                        $connection->query("SELECT * FROM publishers");

                        while($rowPublisher = $connection->fetch_assoc()) {
                            echo '<option value="' . $rowPublisher['Publisher_ID'] . '"' . ($row['Publisher_ID'] == $rowPublisher['Publisher_ID'] ? ' selected' : '') . '>' . $rowPublisher['Publisher_Name'] . '</option>';
                        }
                    ?>
                </select>
            </div>
            <label>Category:</label>
            <div class="input-control select full-size">
                <select data-input="eCategory">
                    <option value="" selected disabled>Choose an option...</option>
                    <?php
                        $connection->query("SELECT * FROM categories");

                        while($rowCategory = $connection->fetch_assoc()) {
                            echo '<option value="' . $rowCategory['Category_ID'] . '"' . ($row['Category_ID'] == $rowCategory['Category_ID'] ? ' selected' : '') . '>' . $rowCategory['Category'] . '</option>';
                        }
                    ?>
                </select>
            </div>
            <label>Author(s):</label>
            <br>
            <div class="input-control select full-size" data-role="select">
                <select data-input="eAuthors" multiple>
                    <?php
                        $connection->query("SELECT * FROM authors");

                        while($rowAuthor = $connection->fetch_assoc()) {
                            echo '<option value="' . $rowAuthor['Author_ID'] . '">' . $rowAuthor['Author_First_Name'] . ' ' . $rowAuthor['Author_Last_Name'] . '</option>';
                        }
                    ?>
                </select>
            </div>
        </div>
    </div>
</div>
<?php
    $connection->close();
?>