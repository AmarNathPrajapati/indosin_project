<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

// $link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] 
// === 'on' ? "https" : "http") . 
// "://" . $_SERVER['HTTP_HOST'] . 
// $_SERVER['REQUEST_URI'];
// echo $link;


$mail = new PHPMailer(true);

try {
	// $mail->SMTPDebug = 2;									
	$mail->isSMTP();											
	$mail->Host	 = "smtp.gmail.com";					
	$mail->SMTPAuth = true;							
    // $mail->Username = "tubelight8493@gmail.com";
	$mail->Username = "hellodesignavenueteam@gmail.com";
    // $mail->Password = 'Tubelight';		
	$mail->Password = 'DA@2018#sk$12';					
	$mail->SMTPSecure = 'tls';				 			
	$mail->Port	 = 587;

	$mail->setFrom('hellodesignavenueteam@gmail.com', 'Indosin Ingredients');	
		
	
	$mail->addAddress($emailto, $name);
	
	$mail->isHTML(true);								
	$mail->Subject = $mail_subject;
	$mail->Body ='

<!DOCTYPE html>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <meta name="viewport" content="width=device-width"/>
            <link href="https://fonts.googleapis.com/css?family=Ubuntu&display=swap" rel="stylesheet">
            <style>
                img{
                    max-width: 120px;
                    height: auto;
                    object-fit: cover;
                }
                th{
                    width: fit-content;
                    padding: 6px;
                    background-color: #f5f5f5;
                }
                td{
                    width: fit-content;
                    padding: 6px;
                }
                a{
                    color:#000000; 
                    text-decoration: none;
                }
                /* .reply-btn{
                    background-color: aqua;
                    color: #FFFFFF;
                    border-radius: 3px;
                    padding: 10px;

                } */
            </style>
        </head>
        <body>
       

        <div class="container-fluid">
            <div class="row">
                <img width="120" src="https://static.wixstatic.com/media/374ef8_7f33eb6d568f4bb590e49324f11533cb~mv2.png/v1/crop/x_0,y_1505,w_4501,h_1475/fill/w_741,h_240,al_c,usm_0.66_1.00_0.01,enc_auto/IndosinIngredients_logo_1.png"> 
                <div class="container-fluid"><h5>Dear '.$name.', Greetings from Indosin Ingredients!</h5></div>
                <div class="container-fluid">'.$mail_message.'</div>
                <br>
                <br>
                <p>Regards</p>
                <p>Team Indosin Ingredients</p>
            </div>
            <div class="row">
                <div class="col-12">
                   <p> Copyright &copy; 2022 | All Rights Reserved  <a href="https://www.indosiningredients.com/" ><b>Indosin Ingredients</b></a></p>
                </div>
            </div>
        </div>
        </body>
        </html>
';
	$mail->AltBody = 'Body in plain text for non-HTML mail clients';
	$mail->send();
	// echo "Mail has been sent successfully!";
} catch (Exception $e) {
	echo "Message could not be sent.";
}

?>