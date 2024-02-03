<?php

        $host = 'localhost';
        $user = 'root';
        $pass = '65536';
        $db = 'curso_linux';

        $conn = mysqli_connect($host, $user, $pass, $db);

        $sql = 'SELECT * FROM users';
        $result = mysqli_query($conn, $sql);
        $users = mysqli_fetch_all($result, MYSQL_ASSOC);

        print_r($users);

        mysql_close($conn);
?>


