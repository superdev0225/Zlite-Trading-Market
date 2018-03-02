<?php


require 'PHPMailer-5.2-stable/PHPMailerAutoload.php';

//echo 'asdf';exit();

try {
    // FOR PRODUCTION
    $data="asdf";

    if (!$data) {
        echo json_last_error();
        exit();
    }

    
    
        $send = sendCCCLMail($data);

        $result['Recipients'][] = array(
            'Recipient_ID' => $contact['Recipient_ID'],
            'Result' => $send['Result'],
            'Result_Description' => $send['Result_Description'],
        );

    // return result back
    $json = json_encode($result, true);
    echo $json;
}

catch (Exception $ex) {
    echo $ex->getMessage();
}

function sendCCCLMail($data) {
    $to = 'jreyes216@outlook.com';
    $to_name = 'asdf';
    $from = 'info@cleverdiet.de';
    //$from = 'reply@aljabalmarathon.com';
    $from_name = 'asdfasdf';
    $subject = 'subject';
    $message = $data;


    $mail = new PHPMailer;                              // Passing `true` enables exceptions

    $mail->SMTPDebug = 2;                                 // Enable verbose debug output
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = 'host107.checkdomain.de';  // Specify main and backup SMTP servers
    $mail->SMTPAuth = true;                               // Enable SMTP authentication
    $mail->Username = 'oapmtnte14';                 // SMTP username
    $mail->Password = 'monster123';                           // SMTP password
    $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 465;                                    // TCP port to connect to

    //Recipients
    $mail->setFrom($from, $from_name);
    //$mail->addReplyTo($from, $from_name);
    $mail->addAddress($to, $to_name);


    
    $mail->Subject = $subject;
    $mail->isHTML(true);
    $mail->Body = $message;
    $send = $mail->send();

    if (!$send) {
        return array (
            'Result' => 'Error',
            'Result_Description' => $mail->ErrorInfo,
        );
    }
    else {
        return array (
            'Result' => 'Success',
            'Result_Description' => null,
        );
    }
    
}