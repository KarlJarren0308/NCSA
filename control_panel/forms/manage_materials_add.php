<?php
    require_once('../requests/connection.php');

    $connection = new Connection();
    $connection->open();
?>
<div id="material-wizard" class="wizard2">
    <div class="step">
        <div class="step-content">
            <label>Material Title:</label>
            <div class="input-control text full-size">
                <input data-input="aMaterialTitle" type="text" autofocus>
            </div>
            <label>Collection Type:</label>
            <div class="input-control select full-size">
                <select data-input="aCollectionType">
                    <option value="" selected disabled>Choose an option...</option>
                    <option value="Book">Book</option>
                    <option value="Newspaper">Newspaper</option>
                    <option value="Magazine">Magazine</option>
                </select>
            </div>
            <label>ISBN:</label>
            <div class="input-control text full-size">
                <input data-input="aIsbn" type="text">
            </div>
        </div>
    </div>
    <div class="step">
        <div class="step-content">
            <label>Call Number:</label>
            <div class="input-control text full-size">
                <input data-input="aCallNumber" type="text">
            </div>
            <label>Date Published:</label>
            <div class="grid condensed no-margin">
                <div class="row cells12">
                    <div class="cell colspan4">
                        <div class="input-control select full-size">
                            <select data-input="aDatePublishedMonth">
                                <option value="01">January</option>
                                <option value="02">February</option>
                                <option value="03">March</option>
                                <option value="04">April</option>
                                <option value="05">May</option>
                                <option value="06">June</option>
                                <option value="07">July</option>
                                <option value="08">August</option>
                                <option value="09">September</option>
                                <option value="10">October</option>
                                <option value="11">November</option>
                                <option value="12">December</option>
                            </select>
                        </div>
                    </div>
                    <div class="cell colspan4">
                        <div class="input-control select full-size">
                            <select data-input="aDatePublishedDay">
                                <?php
                                    for($i = 1; $i <= 31; $i++) {
                                        echo '<option value="' . sprintf('%02d', $i) . '">' . sprintf('%02d', $i) . '</option>';
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="cell colspan4">
                        <div class="input-control select full-size">
                            <select data-input="aDatePublishedYear">
                                <?php
                                    for($i = (date('Y') + 20); $i >= 1970; $i--) {
                                        echo '<option value="' . sprintf('%2d', $i) . '">' . sprintf('%02d', $i) . '</option>';
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <label>Quantity:</label>
            <div class="input-control text full-size">
                <input data-input="aQuantity" type="text">
            </div>
        </div>
    </div>
    <div class="step">
        <div class="step-content">
            <label>Publisher:</label>
            <div class="input-control select full-size">
                <select data-input="aPublisher">
                    <option value="" selected disabled>Choose an option...</option>
                    <?php
                        $connection->query("SELECT * FROM publishers");

                        while($row = $connection->fetch_assoc()) {
                            echo '<option value="' . $row['Publisher_ID'] . '">' . $row['Publisher_Name'] . '</option>';
                        }
                    ?>
                </select>
            </div>
            <label>Category:</label>
            <div class="input-control select full-size">
                <select data-input="aCategory">
                    <option value="" selected disabled>Choose an option...</option>
                    <?php
                        $connection->query("SELECT * FROM categories");

                        while($row = $connection->fetch_assoc()) {
                            echo '<option value="' . $row['Category_ID'] . '">' . $row['Category'] . '</option>';
                        }
                    ?>
                </select>
            </div>
            <label>Author(s):</label>
            <br>
            <div class="input-control select full-size" data-role="select">
                <select data-input="aAuthors" multiple>
                    <?php
                        $connection->query("SELECT * FROM authors");

                        while($row = $connection->fetch_assoc()) {
                            echo '<option value="' . $row['Author_ID'] . '">' . $row['Author_First_Name'] . ' ' . $row['Author_Last_Name'] . '</option>';
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