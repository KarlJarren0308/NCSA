<?php
    session_start();

    if(!isset($_SESSION['account_username'])) {
        header('Location: ./');
    }

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
    <h1>Reservations</h1>
    <hr>
    <table id="reservations-table" class="table striped border bordered">
        <thead class="table-header">
            <tr>
                <th>Title</th>
                <th>Collection Type</th>
                <th>ISBN</th>
                <th>Date Reserved</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php
                require_once('requests/connection.php');

                $username = $_SESSION['account_username'];

                $connection = new Connection();
                $connection->open();

                $connection->query("SELECT * FROM reservations INNER JOIN materials ON reservations.Material_ID=materials.Material_ID WHERE reservations.Borrowers_ID='$username' AND reservations.Status='active'");

                while($row = $connection->fetch_assoc()) {
                    echo '<tr>';
                    echo '<td>' . $row['Material_Title'] . '</td>';
                    echo '<td>' . $row['Collection_Type'] . '</td>';
                    echo '<td>' . $row['ISBN'] . '</td>';
                    echo '<td>' . date('F d, Y', strtotime($row['Date_Reserved'])) . '</td>';
                    echo '<td class="align-center"><a class="button primary mini-button beautify" data-button="delete-reserve-button" data-var-id="' . $row['Reservation_ID'] . '" data-var-action="Delete" data-role="hint" data-hint="Cancel Reservation" data-hint-background="#dc4fad" data-hint-color="#ffffff" data-hint-mode="2" data-hint-position="top"><span class="mif mif-cross"></span></a></td>';
                    echo '</tr>';
                }

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