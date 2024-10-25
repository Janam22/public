<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class PasswordResetSuccessMail extends Mailable
{
    use Queueable, SerializesModels;

    public $company_name;
    public $company_logo_header;
    
    public function __construct($company_name, $company_logo_header)
    {
        $this->company_name = $company_name;
        $this->company_logo_header = $company_logo_header;
    }

    public function build()
    {
        return $this->view('frontend.emails_format.password_reset_success')
                    ->with([
                        'company_name' => $this->company_name,
                        'company_logo_header' => $this->company_logo_header
                    ])
                    ->subject('Password Reset Successful');
    }
}
