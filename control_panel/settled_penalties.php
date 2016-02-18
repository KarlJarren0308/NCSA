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
                    <li><a href="./loan_materials.php"><span class="mif-exit icon"></span><span class="title">Loan Materials</span></a></li>
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
                    <li class="active"><a href="./settled_penalties.php"><span class="mif-dollars mif-ani-shuttle icon"></span><span class="title">Settled Penalties</span></a></li>
                    <li class="divider"></li><li class="divider"></li>
                    <li><a href="./view_logs.php"><span class="mif-clipboard icon"></span><span class="title">View Logs</span></a></li>
                    <li class="divider"></li><li class="divider"></li>
                    <li><a href="./generate_reports.php"><span class="mif-printer icon"></span><span class="title">Generate Reports</span></a></li>
                    <li class="divider"></li><li class="divider"></li>
                    <li><a href="./settings.php"><span class="mif-cog icon"></span><span class="title">Manage Settings</span></a></li>
                </ul>
            </div>
            <div id="cell-content" class="cell auto-size padding20 pane-scroll">
                <h1 class="text-light">Settled Penalties</h1>
                <hr><br>
                <table id="settled-penalties-table" class="table striped border bordered">
                    <thead>
                        <tr>
                            <th>Borrower</th>
                            <th>Material Borrowed</th>
                            <th>Date Borrowed</th>
                            <th>Due Date</th>
                            <th>Date Returned</th>
                            <th>Penalty</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            require_once('requests/connection.php');

                            $connection = new Connection();
                            $connection->open();

                            $connection2 = new Connection();
                            $connection2->open();

                            $connection->query("SELECT * FROM borrow_details INNER JOIN barcodes ON borrow_details.Barcode_Number=barcodes.Barcode_Number INNER JOIN materials ON barcodes.Material_ID=materials.Material_ID INNER JOIN borrow ON borrow_details.Borrow_ID=borrow.Borrow_ID INNER JOIN `return` ON borrow_details.Borrow_Details_ID=return.Borrow_Details_ID INNER JOIN penalties ON return.Return_ID=penalties.Return_ID");

                            while($row = $connection->fetch_assoc()) {
                                $connection2->query("SELECT * FROM accounts LEFT JOIN faculties ON accounts.Account_ID=faculties.Faculty_ID LEFT JOIN students ON accounts.Account_ID=students.Student_ID");
                                $row2 = $connection2->fetch_assoc();

                                if($row2['Account_Type'] == 'Student') {
                                    $type = 'Student';
                                } else {
                                    $type = 'Faculty';
                                }

                                if(strlen($row2[$type . '_Middle_Name']) > 1) {
                                    $name = $row2[$type . '_First_Name'] . ' ' . substr($row2[$type . '_Middle_Name'], 0, 1) . '. ' . $row2[$type . '_Last_Name'];
                                } else {
                                    $name = $row2[$type . '_First_Name'] . ' ' . $row2[$type . '_Last_Name'];
                                }
                                
                                echo '<tr>';
                                echo '<td>' . $name . '</td>';
                                echo '<td>' . $row['Material_Title'] . '</td>';
                                echo '<td>' . date('F d, Y', strtotime($row['Date_Borrowed'])) . '</td>';
                                echo '<td>' . date('F d, Y', strtotime($row['Final_Due_Date'])) . '</td>';
                                echo '<td>' . date('F d, Y', strtotime($row['Date_Returned'])) . '</td>';
                                echo '<td>' . $row['Penalty'] . '</td>';
                                echo '</tr>';
                            }

                            $connection2->close();
                            $connection->close();
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div id="dialog" class="dialog" data-overlay="true" data-overlay-color="op-dark" data-width="50%" data-role="dialog">
    <div id="dialog-inner" class="container-fluid"></div>
</div>
<script src="assets/js/settled_penalties.js"></script>

<?php
    include_once('assets/system/footer.php');
?>