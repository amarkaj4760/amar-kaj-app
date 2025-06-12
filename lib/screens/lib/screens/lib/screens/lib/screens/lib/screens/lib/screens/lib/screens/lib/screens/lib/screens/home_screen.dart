import 'package:flutter/material.dart';
import 'admin_dashboard.dart';
import 'payment_screen.dart';
import 'rating_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Amar Kaj - Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => navigateTo(context, const AdminDashboard()),
              child: const Text("Admin Panel"),
            ),
            ElevatedButton(
              onPressed: () => navigateTo(context, const PaymentScreen()),
              child: const Text("Payment"),
            ),
            ElevatedButton(
              onPressed: () => navigateTo(context, const RatingScreen()),
              child: const Text("Rating & Review"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Back to login
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
