<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;

class OrderConfirmationMail extends Mailable
{
    use Queueable, SerializesModels;

    public $orderNumber;
    public $userDetails;
    public $orderItems;
    public $company_name;
    public $company_logo_header;
    
    public function __construct($orderNumber, $userDetails, $orderItems, $company_name, $company_logo_header)
    {
        $this->orderNumber = $orderNumber;
        $this->userDetails = $userDetails;
        $this->orderItems = $orderItems;
        $this->company_name = $company_name;
        $this->company_logo_header = $company_logo_header;
    }

    public function build()
    {
        return $this->view('frontend.emails_format.order_confirmation')
                    ->subject('Order Confirmation - ' . $this->orderNumber)
                    ->with([
                        'userDetails' => $this->userDetails,
                        'orderItems' => $this->orderItems,
                        'company_name' => $this->company_name,
                        'company_logo_header' => $this->company_logo_header
                    ]);
    }
}
