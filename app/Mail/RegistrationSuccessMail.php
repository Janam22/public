<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class RegistrationSuccessMail extends Mailable
{
    use Queueable, SerializesModels;

    public $customer_name;
    public $company_name;
    public $company_logo_header;
    
    public function __construct($customer_name, $company_name, $company_logo_header)
    {
        $this->customer_name = $customer_name;
        $this->company_name = $company_name;
        $this->company_logo_header = $company_logo_header;
    }

    public function build()
    {
        return $this->view('frontend.emails_format.verification_success')
                    ->with([
                        'customer_name' => $this->customer_name,
                        'company_name' => $this->company_name,
                        'company_logo_header' => $this->company_logo_header
                    ])
                    ->subject('Registration Successful');
    }
}
