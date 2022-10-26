<?php 
    $db = mysqli_connect('localhost', 'root','1234','mysitedb') or die('Fail');

    session_start();
    $user = 'NULL';
    if (!empty($_SESSION['user_id'])) {
        $user = $_SESSION['user_id'];
    }
    $old_password_post = $_POST['old_password'];
    $new_password_post = $_POST['new_password'];

    $query = 'SELECT id, contrase¤a FROM tUsuarios where id = "'.$user.'"';
    $result = mysqli_query($db, $query) or die('Query error');
    if (mysqli_num_rows($result)>0){
        $only_row = mysqli_fetch_array($result);
        if ($only_row[1] == $old_password_post){
            $query2 = "UPDATE  tUsuarios SET contrase¤a = '".$new_password_post."' WHERE id =".$user.'; ';
            $result = mysqli_query($db, $query2) or die('Query2 error');
            header('Location: main.php');
        } else{
            echo '<p>Contrase¤a incorrecta</p>';
        }
    }
?>