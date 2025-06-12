import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.png"), // আপনার অ্যাসেট চেঞ্জ করতে পারেন
            ),
            const SizedBox(height: 10),
            const Text("Md. Rahim Uddin", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("Registration ID: AK-COX-0001"),
            const SizedBox(height: 10),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("01712345678"),
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text("Cox's Bazar Sadar, Cox's Bazar"),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                // লগআউট লজিক এখানে যাবে
              },
            ),
          ],
        ),
      ),
    );
  }
}
