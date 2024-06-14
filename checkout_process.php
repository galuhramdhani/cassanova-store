<?php
include "db.php";

// Periksa koneksi database
if ($con->connect_error) {
    die("Koneksi database gagal: " . $con->connect_error);
}

// Periksa apakah tabel payments ada
$sql = "SHOW TABLES LIKE 'payment'";
$result = $con->query($sql);

if ($result->num_rows == 0) {
    die("Tabel 'payment' tidak ditemukan dalam database.");
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Terima data pembayaran dari form checkout
    $firstname = isset($_POST['firstname']) ? $_POST['firstname'] : ''; 
    $mobile = isset($_POST['mobile']) ? $_POST['mobile'] : '';
    $payment_method = isset($_POST['payment_method']) ? $_POST['payment_method'] : '';
    $total_count = isset($_POST['total_count']) ? $_POST['total_count'] : '';
    $total_price = isset($_POST['total_price']) ? $_POST['total_price'] : '';
    $id_game = isset($_POST['id_game']) ? $_POST['id_game'] : '';

    // Masukkan data pembayaran ke dalam tabel payments
    $sql = "INSERT INTO payment (f_name, mobile, payment_method, id_game, amount, status) VALUES ('$firstname', '$mobile', '$payment_method', '$id_game', '$total_price', 'Success')";
    $result = mysqli_query($con, $sql);

    if ($result) {
        // Pembayaran berhasil dimasukkan ke dalam tabel, lanjutkan dengan proses selanjutnya
        // Misalnya, redirect pengguna ke halaman terima kasih
        header("Location: notifikasi.php");
        exit;
    } else {
        // Jika terjadi kesalahan saat memasukkan data ke dalam tabel payments
        echo "Error: " . mysqli_error($con);
    }
}
?>
