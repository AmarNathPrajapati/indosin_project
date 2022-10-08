<?php
    include('./config.php');

    $from_location=$_POST['from_location'];
    if($_POST['email'] && $_POST['name'] && $_POST['phone'] && $_POST['message'] && $_POST['product'] && $_POST['from_location'])
    {
        $email_=$_POST['email'];
        $name_=$_POST['name'];
        $phone_=$_POST['phone'];
        $message_=$_POST['message'];
        $product_=$_POST['product'];
         // $flag=$_POST['flag'];
        $flag=1;
        $from_location=$_POST['from_location'];
        $stmt="INSERT INTO `product_query` (email,name,phone,message,product,flag) VALUES (?,?,?,?,?,?)";
        $sql = mysqli_prepare($conn, $stmt);
        mysqli_stmt_bind_param($sql, 'ssissi', $email_, $name_, $phone_,$message_,$product_,$flag);
        $result=mysqli_stmt_execute($sql);
        if($result)
        {
            mysqli_stmt_close($sql); 

            $stmt="SELECT name,email FROM `users` WHERE is_admin=(?)";
            $sql=mysqli_prepare($conn, $stmt);
    
            //binding the parameters to prepard statement
            mysqli_stmt_bind_param($sql,"i",$is_admin);

            $is_admin=1;
    
                $result=mysqli_stmt_execute($sql);
                if ($result) {
                    $data= mysqli_stmt_get_result($sql);
                    while ($row= mysqli_fetch_array($data)) {

                        $emailto=$row["email"];
                        $name=$row['name']==null?"Admin":$row['name'];
                        $mail_subject="New Query";
                        $mail_message="A new product query came from a 
                        user. <br>User details are following: <br>Name: ".$name_." , 
                        <br>Email: ".$email_." , 
                        <br>Phone: ".$phone_." , <br>Message: ".$message_
                        ." , <br>Product: ".$product_;
                        require("./mailer_code/sendmail.php");
                    }
                    $emailto=$email_;
                    $name=$name_==null?"Admin":$name_;
                    $mail_subject="Thank you for submitting request";
                    $mail_message="Thank you for submitting request. We will get back to you within 24 hours.";
                    require("./mailer_code/sendmail.php");
                }
                else {
                        mysqli_close($conn);
                        ?>
                        <script>
                            alert("Sorry something went wrong");
                            window.location.href="../<?php echo $from_location; ?>"
                        </script>
                        <?php
                }
            
            ?>
            <script>alert('We will get back to you within 24 working hours');
                    window.location.href="../<?php echo $from_location; ?>"
                    
            </script>
        <?php } 
        else
        {
            mysqli_stmt_close($sql);
            ?>
            <script>alert('Sorry Something Went Wrong. Please try again.');
               window.location.href="../<?php echo $from_location; ?>"
            </script>
            <?php
        }
    }
    else{
        ?>
        <script>
            alert("Please fill all the mandatory fields.");
            window.location.href="../<?php echo $from_location; ?>"
        </script>
        <?php
    }
?>