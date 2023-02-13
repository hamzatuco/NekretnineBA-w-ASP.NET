<?php
$server= "localhost";
$username = "root";
$password = "";
$dbname = "forma";

$conn = mysqli_connect($server, $username, $password, $dbname);

if (isset($_POST['submit'])){

    if (!empty($_POST['ime']) && !empty($_POST['email']) && !empty($_POST['broj']) && !empty($_POST['poruka'])){
        $ime = $_POST['ime'];
        $email = $_POST['email'];
        $broj = $_POST['broj'];
        $poruka = $_POST['poruka'];

        $query = "insert into upit (ime,email,broj,text) values ('$ime', '$email', '$broj', '$poruka')";

        $run = mysqli_query($conn, $query) or die (mysqli_error());

        if ($run){
            echo"Forma poslana uspjesno";
            header( 'Location: ../temp.html' );
        }
        else {
            echo"Forma nije poslana";
        }
    }
    else {
        echo "Popunite sva polja";
    }
}

?>