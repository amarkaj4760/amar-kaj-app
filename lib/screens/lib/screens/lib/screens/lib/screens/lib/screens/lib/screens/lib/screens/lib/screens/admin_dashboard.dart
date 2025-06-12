import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final locations = [
      {
        'district': 'Cox\'s Bazar',
        'upazila': 'Chakaria',
        'union': 'Harbang',
        'ward': 'Ward-3',
        'village': 'Shah Porir Dwip',
        'users': 25,
      },
      {
        'district': 'Cox\'s Bazar',
        'upazila': 'Teknaf',
        'union': 'Baharchara',
        'ward': 'Ward-1',
        'village': 'Shamlapur',
        'users': 40,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Panel"),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          final loc = locations[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text("${loc['district']} > ${loc['upazila']}"),
              subtitle: Text("Union: ${loc['union']}, Ward: ${loc['ward']}, Village: ${loc['village']}"),
              trailing: Text("Users: ${loc['users']}"),
            ),
          );
        },
      ),
    );
  }
}
