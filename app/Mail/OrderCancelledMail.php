<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;

class OrderCancelledMail extends Mailable
{
    use Queueable, SerializesModels;

    public $orderNumber;
    public $remarks;
    public $OrderMail;
    public $customer_name;
    public $company_name;
    public $company_logo_header;
    
    public function __construct($orderNumber, $remarks, $OrderMail, $customer_name, $company_name, $company_logo_header)
    {
        $this->orderNumber = $orderNumber;
        $this->remarks = $remarks;
        $this->OrderMail = $OrderMail;
        $this->customer_name = $customer_name;
        $this->company_name = $company_name;
        $this->company_logo_header = $company_logo_header;
    }

    public function build()
    {
        return $this->view('frontend.emails_format.order_cancelled')
                    ->subject('Cancellation of Order - ' . $this->orderNumber)
                    ->with([
                        'remarks' => $this->remarks,
                        'OrderMail' => $this->OrderMail,
                        'customer_name' => $this->customer_name,
                        'company_name' => $this->company_name,
                        'company_logo_header' => $this->company_logo_header
                    ]);
    }
}
