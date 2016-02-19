<?php
    session_start();

    if(!isset($_SESSION['account_username'])) {
        header('Location: ./../');
    }

    include_once('assets/system/header.php');
?>

<div class="app-bar fixed-top shadow" data-role="appbar">
    <a class="app-bar-element branding" href="./"><img class="app-logo" src="assets/img/logo.png">&nbsp;&nbsp;Nazareth Christian School of Antipolo</a>
    <?php
        if(isset($_SESSION['account_username'])) {
            $name = $_SESSION['account_first_name'] . ' ' . $_SESSION['account_last_name'];

            echo '<ul class="app-bar-menu place-right">';
            echo '<li><a class="app-bar-element dropdown-toggle">' . $name . '&nbsp;&nbsp;<img class="app-logo" src="./../user_images/' . $_SESSION['account_image'] . '"></a>';
            echo '<ul class="d-menu place-right" data-role="dropdown">';
            echo '<li><a href="./../">Online Public Access Catalog</a></li>';
            echo '<li><a href="./../reservations.php">My Reservations</a></li>';
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
<div id="main-block">
    <div class="flex-grid" style="height: 100%;">
        <div class="row" style="height: 100%;">
            <div id="cell-sidebar" class="cell bg-lightDark size-x300" style="overflow-y: scroll; height: 100%;">
                <ul class="sidebar2 dark">
                    <li><a href="./"><span class="mif-meter icon"></span><span class="title">Dashboard</span></a></li>
                    <li class="divider"></li><li class="divider"></li>
                    <li><a href="./reserved_materials.php"><span class="mif-history icon"></span><span class="title">Reserved Materials</span></a></li>
                    <li class="active"><a href="./loan_materials.php"><span class="mif-exit mif-ani-shuttle icon"></span><span class="title">Loan Materials</span></a></li>
                    <li><a href="./receive_materials.php"><span class="mif-enter icon"></span><span class="title">Receive Materials</span></a></li>
                    <li class="divider"></li><li class="divider"></li>
                    <li><a href="./manage_materials.php"><span class="mif-books icon"></span><span class="title">Manage Materials</span></a></li>
                    <li><a href="./manage_authors.php"><span class="mif-users icon"></span><span class="title">Manage Authors</span></a></li>
                    <li><a href="./manage_publishers.php"><span class="mif-printer icon"></span><span class="title">Manage Publishers</span></a></li>
                    <li><a href="./manage_categories.php"><span class="mif-list2 icon"></span><span class="title">Manage Categories</span></a></li>
                    <li class="divider"></li><li class="divider"></li>
                    <li><a href="./manage_faculties.php"><span class="mif-users icon"></span><span class="title">Manage Faculty Information</span></a></li>
                    <li><a href="./manage_students.php"><span class="mif-users icon"></span><span class="title">Manage Student Information</span></a></li>
                    <li><a href="./manage_weeding.php"><span class="mif-books icon"></span><span class="title">Manage Weeded Materials</span></a></li>
                    <li><a href="./manage_holidays.php"><span class="mif-calendar icon"></span><span class="title">Manage Holidays</span></a></li>
                    <li><a href="./settled_penalties.php"><span class="mif-dollars icon"></span><span class="title">Settled Penalties</span></a></li>
                    <li class="divider"></li><li class="divider"></li>
                    <li><a href="./view_logs.php"><span class="mif-clipboard icon"></span><span class="title">View Logs</span></a></li>
                    <li class="divider"></li><li class="divider"></li>
                    <li><a href="./generate_reports.php"><span class="mif-printer icon"></span><span class="title">Generate Reports</span></a></li>
                    <li class="divider"></li><li class="divider"></li>
                    <li><a href="./settings.php"><span class="mif-cog icon"></span><span class="title">Manage Settings</span></a></li>
                </ul>
            </div>
            <div id="cell-content" class="pane-scroll cell auto-size padding20 pane-scroll">
                <h1 class="text-light">Loan Materials</h1>
                <hr><br>
                <div class="grid">
                    <div class="row cells12">
                        <div class="cell colspan10 offset1">
                            <h3 class="text-light">Select borrower</h3>
                            <hr><br>
                            <div class="input-control select full-size">
                                <select data-input="borrower">
                                    <option value="" selected disabled>Select a borrower...</option>
                                    <?php
                                        require_once('requests/connection.php');

                                        $connection = new Connection();
                                        $connection->open();

                                        $connection->query("SELECT * FROM accounts LEFT JOIN faculties ON accounts.Account_ID=faculties.Faculty_ID LEFT JOIN students ON accounts.Account_ID=students.Student_ID");

                                        while($row = $connection->fetch_assoc()) {
                                            if($row['Account_Type'] == 'Student') {
                                                $type = 'Student';
                                            } else {
                                                $type = 'Faculty';
                                            }

                                            if(strlen($row[$type . '_Middle_Name']) > 1) {
                                                $name = $row[$type . '_First_Name'] . ' ' . substr($row[$type . '_Middle_Name'], 0, 1) . '. ' . $row[$type . '_Last_Name'];
                                            } else {
                                                $name = $row[$type . '_First_Name'] . ' ' . $row[$type . '_Last_Name'];
                                            }

                                            echo '<option value="' . $row['Account_ID'] . '">' . $name . '</option>';
                                        }

                                        $connection->close();
                                    ?>
                                </select>
                            </div>
                            <h3 class="text-light">Select material(s) to borrow</h3>
                            <hr><br>
                            <table id="materials-table" class="table striped border bordered">
                                <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Collection Type</th>
                                        <th>ISBN</th>
                                        <th>Date Published</th>
                                        <th>Copies Available</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $connection = new Connection();
                                        $connection->open();

                                        $connection2 = new Connection();
                                        $connection2->open();

                                        $connection->query("SELECT * FROM works INNER JOIN authors ON works.Author_ID=authors.Author_ID INNER JOIN materials ON works.Material_ID=materials.Material_ID INNER JOIN publishers ON materials.Publisher_ID=publishers.Publisher_ID INNER JOIN categories ON materials.Category_ID=categories.Category_ID WHERE materials.Status='active' GROUP BY materials.Material_Title");

                                        while($row = $connection->fetch_assoc()) {
                                            $connection2->query("SELECT * FROM barcodes WHERE Material_ID='$row[Material_ID]' AND Availability='true'");
                                            $quantity = $connection2->num_rows();

                                            $connection2->query("SELECT * FROM reservations WHERE Material_ID='$row[Material_ID]' AND Status='active'");
                                            $reserveCount = $connection2->num_rows();

                                            echo '<tr>';
                                            echo '<td>' . $row['Material_Title'] . '</td>';
                                            echo '<td>' . $row['Collection_Type'] . '</td>';
                                            echo '<td>' . $row['ISBN'] . '</td>';
                                            echo '<td>' . date('F d, Y', strtotime($row['Date_Published'])) . '</td>';
                                            echo '<td>' . ($quantity - $reserveCount) . '</td>';

                                            if(isset($_SESSION['account_username'])) {
                                                // echo '<td class="align-center"><a class="button primary mini-button beautify" data-button="add-basket-button" data-var-id="' . $row['Material_ID'] . '" data-var-action="Add" data-role="hint" data-hint="Add to Basket" data-hint-background="#dc4fad" data-hint-color="#ffffff" data-hint-mode="2" data-hint-position="top"><span class="mif mif-plus"></span></a></td>';
                                                if($quantity - $reserveCount > 0) {
                                                    echo '<td class="align-center">';
                                                    echo '<label class="input-control checkbox small-check">';
                                                    echo '<input data-input="loan-checkbox" data-var-id="' . $row['Material_ID'] . '" type="checkbox">';
                                                    echo '<span class="check"></span><span class="caption"></span>';
                                                    echo '</label>';
                                                    echo '</td>';
                                                } else {
                                                    echo '<td class="align-center"></td>';
                                                }
                                            }

                                            echo '</tr>';
                                        }

                                        $connection2->close();
                                        $connection->close();
                                    ?>
                                </tbody>
                            </table>
                            <br><br><br>
                            <div class="align-right">
                                <button class="button primary" data-button="borrow-button">Borrow Material(s)</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="dialog" class="dialog" data-overlay-click-close="true" data-overlay="true" data-overlay-color="op-dark" data-width="50%" data-role="dialog">
    <div id="dialog-inner" class="container-fluid"></div>
</div>
<script src="assets/js/loan_materials.js"></script>

<?php
    include_once('assets/system/footer.php');
?>