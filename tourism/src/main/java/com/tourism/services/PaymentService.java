package com.tourism.services;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.tourism.entity.Booking;
import com.tourism.entity.Payment;
import com.tourism.repository.BookingRepository;
import com.tourism.repository.PaymentRepository;

@Service
public class PaymentService {

    private final PaymentRepository paymentRepository;
    private final BookingRepository bookingRepository;
    public PaymentService(
            PaymentRepository paymentRepository,
            BookingRepository bookingRepository,
            @Value("${razorpay.key}") String razorpayKey,
            @Value("${razorpay.secret}") String razorpaySecret
    ) {
        this.paymentRepository = paymentRepository;
        this.bookingRepository = bookingRepository;
    }

    // Dummy order creation for demo (no Razorpay API call)
    public Payment createRazorpayOrder(Long bookingId) throws Exception {

        Booking booking = bookingRepository.findById(bookingId)
                .orElseThrow(() -> new RuntimeException("Booking not found"));

        JSONObject order = new JSONObject();
        order.put("id", "order_demo_" + bookingId);
        order.put("amount", (long) Math.round(booking.getTotalAmount() * 100));
        order.put("currency", "INR");

        Payment payment = new Payment();
        payment.setBooking(booking);
        payment.setAmount(booking.getTotalAmount());
        payment.setRazorpayOrderId(order.getString("id"));
        payment.setStatus("PENDING");

        return paymentRepository.save(payment);
    }

    // Dummy verification (simulate successful payment)
    public void verifyPayment(
            String razorpayOrderId,
            String razorpayPaymentId,
            String razorpaySignature
    ) throws Exception {

        Payment payment = paymentRepository
                .findAll()
                .stream()
                .filter(p -> p.getRazorpayOrderId().equals(razorpayOrderId))
                .findFirst()
                .orElseThrow(() -> new RuntimeException("Payment not found"));

        // For demo we skip Razorpay verification
        payment.setRazorpayPaymentId("demo_payment_id");
        payment.setRazorpaySignature("demo_signature");
        payment.setStatus("SUCCESS");

        payment.getBooking().setStatus("CONFIRMED");

        paymentRepository.save(payment);
    }
}