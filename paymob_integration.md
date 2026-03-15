# Paymob Integration Guide

This document outlines the steps to integrate Paymob for course reservations.

## Step 1: Configuration
Add the following variables to your `.env` file:
- `PAYMOB_API_KEY`: Your Paymob account API key.
- `PAYMOB_INTEGRATION_ID`: The integration ID for your payment method (e.g., Visa).
- `PAYMOB_IFRAME_ID`: The ID of the iframe you created in Paymob.
- `PAYMOB_HMAC_SECRET`: Secret used to verify webhook integrity.

## Step 2: Paymob API Logic (Authentication)
Before creating an order, you must authenticate with Paymob:
- **Endpoint**: `POST https://accept.paymob.com/api/auth/tokens`
- **Body**: `{"api_key": "YOUR_API_KEY"}`
- **Response**: Returns a `token`.

## Step 3: Order Registration
Create an order in Paymob to track the transaction:
- **Endpoint**: `POST https://accept.paymob.com/api/ecommerce/orders`
- **Body**:
  ```json
  {
    "auth_token": "TOKEN_FROM_STEP_2",
    "delivery_needed": "false",
    "amount_cents": "COURSE_PRICE_IN_CENTS",
    "currency": "EGP",
    "items": []
  }
  ```
- **Response**: Returns an `id` (Order ID).

## Step 4: Payment Key Generation
Request a payment key to initiate the checkout:
- **Endpoint**: `POST https://accept.paymob.com/api/acceptance/payment_keys`
- **Body**:
  ```json
  {
    "auth_token": "TOKEN_FROM_STEP_2",
    "amount_cents": "COURSE_PRICE_IN_CENTS",
    "expiration": 3600,
    "order_id": "ORDER_ID_FROM_STEP_3",
    "billing_data": {
      "first_name": "STUDENT_NAME",
      "last_name": "STUDENT_LAST_NAME",
      "email": "STUDENT_EMAIL",
      "phone_number": "STUDENT_PHONE",
      "country": "EG",
      "city": "NA",
      "street": "NA",
      "building": "NA",
      "floor": "NA",
      "apartment": "NA"
    },
    "currency": "EGP",
    "integration_id": "PAYMOB_INTEGRATION_ID"
  }
  ```
- **Response**: Returns a `token` (Payment Key).

## Step 5: Redirect to Checkout
Redirect the mobile app user to the Paymob iframe/checkout page:
- **URL**: `https://accept.paymob.com/api/acceptance/iframes/PAYMOB_IFRAME_ID?payment_token=PAYMENT_KEY`

## Step 6: Callback & Webhook Handling
Paymob will call your server to confirm the transaction status.
1.  **Callback**: Redirects the user back to your app with status params.
2.  **Webhook**: A server-to-server POST request with the transaction details. You must verify the `hmac` signature before updating the reservation status to `paid`.
