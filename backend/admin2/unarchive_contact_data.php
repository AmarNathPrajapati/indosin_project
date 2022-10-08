<?php 
  include('../config.php');
    if ($_POST["contact_row_id"]) {
    $stmt="UPDATE `contact_us` SET archive=? WHERE id=(?)";
    $sql=mysqli_prepare($conn, $stmt);

    //binding the parameters to prepard statement
    $archive=0;
    mysqli_stmt_bind_param($sql,"si",$archive,$_POST['contact_row_id']);

    $result=mysqli_stmt_execute($sql);
        if ($result) {
            mysqli_stmt_close($sql);
            mysqli_close($conn);
            echo "<script>
                        window.location.href='../../frontend/admin2/contact_archive_date.php';
                    </script>";
        } 
        else {
        echo mysqli_error($conn);
        mysqli_stmt_close($sql);
        mysqli_close($conn);
        echo "<script>alert('Sorry!! id not found.');
        window.location.href='../../frontend/admin2/contact_archive_date.php';
        </script>";
        }
    } 
    else {

        mysqli_close($conn);
        echo mysqli_error($conn);
        echo '<script>
        alert("Something went wrong. We are facing some technical issue. It will be resolved soon. ");
        window.location.href="../../frontend/admin2/contact_archive_date.php"
        <script>';
    }
    
?>