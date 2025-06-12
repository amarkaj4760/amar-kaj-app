import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amar Kaj Dashboard"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text("Find Work Near You", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            icon: const Icon(Icons.search),
            label: const Text("Browse Jobs"),
            onPressed: () {
              Navigator.pushNamed(context, '/job_list');
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.post_add),
            label: const Text("Post a Job"),
            onPressed: () {
              Navigator.pushNamed(context, '/job_post');
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.payment),
            label: const Text("Payment"),
            onPressed: () {
              Navigator.pushNamed(context, '/payment');
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.star),
            label: const Text("Rating & Review"),
            onPressed: () {
              Navigator.pushNamed(context, '/rating');
            },
          ),
        ],
      ),
    );
  }
}
