<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'Exception.php';
require 'PHPMailer.php';
require 'SMTP.php';

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'smtp.example.com';                     //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'progrados11@gmail.com';                     //SMTP username
    $mail->Password   = 'mgfm gukp qaal qzez';                               //SMTP password
    $mail->SMTPSecure = 'tls';            //Enable implicit TLS encryption
    $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom('progrados11@gmail.com', 'Asociarcearte');
    $mail->addAddress('jonathanrodricast@gmail.com');     //Add a recipient

  
    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = 'Asunto test';
    $mail->Body    = 'Buenas tardes, en este correo compartimos con usted el número de la cuenta al cual puede transferir el dinero para completar la inscripción y participación en los toldos.</b>';

    $mail->send();
    echo 'Correo enviado con exito';
} catch (Exception $e) {
    echo "Error al enviar correo: {$mail->ErrorInfo}";
}