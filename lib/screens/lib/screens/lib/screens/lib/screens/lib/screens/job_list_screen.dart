import 'package:flutter/material.dart';

class JobListScreen extends StatelessWidget {
  const JobListScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> dummyJobs = const [
    {
      'title': 'Electric Fan Repair',
      'location': 'Cox\'s Bazar Sadar',
      'budget': '300',
    },
    {
      'title': 'Home Cleaning',
      'location': 'Chakaria',
      'budget': '500',
    },
    {
      'title': 'Tuition for Class 8',
      'location': 'Ramu',
      'budget': '2000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Available Jobs"),
      ),
      body: ListView.builder(
        itemCount: dummyJobs.length,
        itemBuilder: (context, index) {
          final job = dummyJobs[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(job['title']!),
              subtitle: Text("${job['location']} | ৳${job['budget']}"),
              trailing: ElevatedButton(
                onPressed: () {
                  // এখানে একসেপ্ট করার ব্যবস্থা থাকবে
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Accepted! Pay 20 BDT.")),
                  );
                },
                child: const Text("Accept"),
              ),
            ),
          );
        },
      ),
    );
  }
}
