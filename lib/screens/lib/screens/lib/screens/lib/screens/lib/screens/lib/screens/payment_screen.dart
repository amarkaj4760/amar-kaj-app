import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool paymentSubmitted = false;
  bool refundRequested = false;
  String refundReason = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment & Refund"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: paymentSubmitted
                  ? null
                  : () {
                      setState(() {
                        paymentSubmitted = true;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("20 BDT Payment Submitted")),
                      );
                    },
              child: const Text("Pay 20 BDT to Accept Job"),
            ),
            const SizedBox(height: 20),
            if (paymentSubmitted && !refundRequested)
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      String tempReason = "";
                      return AlertDialog(
                        title: const Text("Cancel & Refund"),
                        content: TextField(
                          decoration:
                              const InputDecoration(hintText: "Reason"),
                          onChanged: (value) {
                            tempReason = value;
                          },
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              if (tempReason.isNotEmpty) {
                                setState(() {
                                  refundRequested = true;
                                  refundReason = tempReason;
                                });
                                Navigator.of(context).pop();
                              }
                            },
                            child: const Text("Submit"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Cancel and Request Refund"),
              ),
            const SizedBox(height: 20),
            if (refundRequested)
              Text(
                "Refund Requested\nReason: $refundReason",
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
