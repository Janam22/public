<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ForgotPasswordCodeMail extends Mailable
{
    use Queueable, SerializesModels;
    
    public $code;
    public $company_name;
    public $company_logo_header;

    public function __construct($code, $company_name, $company_logo_header)
    {
        $this->code = $code;
        $this->company_name = $company_name;
        $this->company_logo_header = $company_logo_header;
    }

    public function build()
    {
        return $this->view('frontend.emails_format.forgot_password_code')
                    ->with([
                        'code' => $this->code,
                        'company_name' => $this->company_name,
                        'company_logo_header' => $this->company_logo_header
                    ])
                    ->subject('Forgot Password Code');
    }
}
