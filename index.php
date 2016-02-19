<?php
    session_start();

    include_once('assets/system/header.php');
?>

<div class="app-bar fixed-top shadow" data-role="appbar">
    <div class="container">
        <a class="app-bar-element branding" href="./"><img class="app-logo" src="assets/img/logo.png">&nbsp;&nbsp;Nazareth Christian School of Antipolo</a>
        <?php
            if(isset($_SESSION['account_username'])) {
                $name = $_SESSION['account_first_name'] . ' ' . $_SESSION['account_last_name'];

                echo '<ul class="app-bar-menu place-right">';
                echo '<li><a class="app-bar-element dropdown-toggle">' . $name . '&nbsp;&nbsp;<img class="app-logo" src="user_images/' . $_SESSION['account_image'] . '"></a>';
                echo '<ul class="d-menu place-right" data-role="dropdown">';

                if($_SESSION['account_type'] == 'Administrator' || $_SESSION['account_type'] == 'Principal' || $_SESSION['account_type'] == 'Librarian') {
                    echo '<li><a href="./control_panel">Control Panel</a></li>';
                }

                echo '<li><a href="reservations.php">My Reservations</a></li>';
                echo '<li class="divider"></li>';
                //echo '<li><a href="">Change Account Picture</a></li>';
                echo '<li><a href="logout.php">Logout</a></li>';
                echo '</ul>';
                echo '</li>';
                echo '</ul>';
            } else {
                echo '<div class="place-right">';
                echo '<a class="app-bar-element" href="login.php"><span class="mif-switch"></span>&nbsp;&nbsp;Login</a>';
                echo '</div>';
            }
        ?>
    </div>
</div>
<div id="main-container" class="container">
    <h1>Online Public Access Catalog</h1>
    <hr>
    <table id="materials-table" class="table striped border bordered">
        <thead class="table-header">
            <tr>
                <th>Title</th>
                <th>Collection Type</th>
                <th>ISBN</th>
                <th>Date Published</th>
                <th>Copies Available</th>
                <th>Location</th>
                <?php
                    if(isset($_SESSION['account_username'])) {
                        echo '<th></th>';
                    }
                ?>
            </tr>
        </thead>
        <tbody>
            <?php
                require_once('requests/connection.php');

                $connection = new Connection();
                $connection->open();

                $connection2 = new Connection();
                $connection2->open();

                $connection->query("SELECT * FROM works INNER JOIN authors ON works.Author_ID=authors.Author_ID INNER JOIN materials ON works.Material_ID=materials.Material_ID INNER JOIN publishers ON materials.Publisher_ID=publishers.Publisher_ID INNER JOIN categories ON materials.Category_ID=categories.Category_ID WHERE materials.Status='active' GROUP BY materials.Material_Title");

                while($row = $connection->fetch_assoc()) {
                    $materialID = $row['Material_ID'];

                    $connection2->query("SELECT * FROM barcodes WHERE Material_ID='$materialID' AND Availability='true'");
                    $quantity = $connection2->num_rows();

                    $connection2->query("SELECT * FROM reservations WHERE Material_ID='$materialID' AND Status='active'");
                    $reserveCount = $connection2->num_rows();

                    $connection2->query("SELECT * FROM `return` INNER JOIN barcodes WHERE barcodes.Material_ID='$materialID'");
                    $returnCount = $connection2->num_rows();

                    echo '<tr>';
                    echo '<td>' . $row['Material_Title'] . '</td>';
                    echo '<td>' . $row['Collection_Type'] . '</td>';
                    echo '<td>' . $row['ISBN'] . '</td>';
                    echo '<td>' . date('F d, Y', strtotime($row['Date_Published'])) . '</td>';
                    echo '<td>' . ($quantity - $reserveCount) . '</td>';
                    echo '<td>' . $row['Category'] . ' Shelf</td>';

                    if(isset($_SESSION['account_username'])) {
                        if(($quantity - $reserveCount) != 0) {
                            echo '<td class="align-center"><a class="button primary mini-button beautify" data-button="reserve-button" data-var-id="' . $materialID . '" data-var-action="Add" data-role="hint" data-hint="Reserve" data-hint-background="#dc4fad" data-hint-color="#ffffff" data-hint-mode="2" data-hint-position="top"><span class="mif mif-plus"></span></a></td>';
                        } else {
                            echo '<td class="align-center"><button class="button danger mini-button beautify" data-role="hint" data-hint="Not Available" data-hint-background="#dc4fad" data-hint-color="#ffffff" data-hint-mode="2" data-hint-position="top"><span class="mif mif-blocked"></span></button></td>';
                        }
                    }

                    echo '</tr>';
                }

                $connection2->close();
                $connection->close();
            ?>
        </tbody>
    </table>
</div>
<div id="dialog" class="dialog" data-overlay="true" data-overlay-color="op-dark" data-width="50%" data-role="dialog">
    <div id="dialog-inner" class="container-fluid"></div>
</div>
<script src="assets/js/opac.js"></script>

<?php
    include_once('assets/system/footer.php');
?>