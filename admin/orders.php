<?php
session_start();
include("../db.php");

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (isset($_GET['action']) && $_GET['action'] != "" && $_GET['action'] == 'delete') {
    $payment_id = $_GET['payment_id'];

    // Delete query
    $delete_query = "DELETE FROM payment WHERE payment_id='$payment_id'";
    if (mysqli_query($con, $delete_query)) {
        echo "Payment deleted successfully.";
    } else {
        die("Delete query is incorrect: " . mysqli_error($con));
    }
}

// Pagination
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$page1 = ($page == 1) ? 0 : ($page * 10) - 10;

include "sidenav.php";
include "topheader.php";
?>
<!-- End Navbar -->
<div class="content">
    <div class="container-fluid">
        <!-- your content here -->
        <div class="col-md-14">
            <div class="card">
                <div class="card-header card-header-primary">
                    <h4 class="card-title">Payments </h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive ps">
                        <table class="table table-hover tablesorter" id="">
                            <thead class="text-primary">
                                <tr>
                                    <th>Nama</th>
                                    <th>No.Hp</th>
                                    <th>Payment ID</th>
                                    <th>ID Game</th>
                                    <th>Amount</th>
                                    <th>Payment Method</th>
                                    <th>Payment Date</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                // Query to get payments data
                                $query = "SELECT * FROM payment LIMIT $page1, 10";
                                $result = mysqli_query($con, $query) or die("Query is incorrect: " . mysqli_error($con));

                                // Debugging: display query results
                                if (mysqli_num_rows($result) > 0) {
                                    while ($row = mysqli_fetch_array($result)) {
                                        $f_name = isset($row['f_name']) ? $row['f_name'] : 'N/A';
                                        $mobile = isset($row['mobile']) ? $row['mobile'] : 'N/A';
                                        $payment_id = isset($row['payment_id']) ? $row['payment_id'] : 'N/A';
                                        $amount = isset($row['amount']) ? $row['amount'] : 'N/A';
                                        $payment_method = isset($row['payment_method']) ? $row['payment_method'] : 'N/A';
                                        $id_game = isset($row['id_game']) ? $row['id_game'] : 'N/A';
                                        $status = isset($row['status']) ? $row['status'] : 'N/A';
                                        $payment_date = isset($row['payment_date']) ? $row['payment_date'] : 'N/A';
                                        
                                        echo "<tr>
                                                <td>$f_name</td>
                                                <td>$mobile</td>
                                                <td>$payment_id</td>
                                                <td>$id_game</td>
                                                <td>$amount</td>
                                                <td>$payment_method</td>
                                                <td>$payment_date</td>
                                                <td>$status</td>
                                                <td>
                                                    <a class='btn btn-danger' href='orders.php?payment_id=$payment_id&action=delete'>Delete</a>
                                                </td>
                                              </tr>";
                                    }
                                } else {
                                    echo "<tr><td colspan='8'>No payments found.</td></tr>";
                                }
                                ?>
                            </tbody>
                        </table>
                        <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                            <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                        </div>
                        <div class="ps__rail-y" style="top: 0px; right: 0px;">
                            <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
include "footer.php";
?>
