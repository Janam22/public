<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->bigInteger('id')->primary()->autoIncrement();
            $table->string('full_name')->nullable();
            $table->string('email')->unique();
            $table->string('email_verification_code')->nullable();
            $table->string('code_expires_at')->nullable();
            $table->string('password')->nullable();
            $table->string('phone')->nullable();
            $table->string('email_verified')->nullable();
            $table->string('email_verified_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customers');
    }
};
