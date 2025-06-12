import 'package:flutter/material.dart';

class JobPostScreen extends StatefulWidget {
  const JobPostScreen({Key? key}) : super(key: key);

  @override
  State<JobPostScreen> createState() => _JobPostScreenState();
}

class _JobPostScreenState extends State<JobPostScreen> {
  final _formKey = GlobalKey<FormState>();

  String jobTitle = '';
  String jobDescription = '';
  String location = '';
  String budget = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post a Job"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Job Title'),
                onSaved: (value) => jobTitle = value!,
                validator: (value) => value!.isEmpty ? 'Enter job title' : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
                onSaved: (value) => jobDescription = value!,
                validator: (value) => value!.isEmpty ? 'Enter description' : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Location'),
                onSaved: (value) => location = value!,
                validator: (value) => value!.isEmpty ? 'Enter location' : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Budget (in BDT)'),
                keyboardType: TextInputType.number,
                onSaved: (value) => budget = value!,
                validator: (value) => value!.isEmpty ? 'Enter budget' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // API দিয়ে জব সাবমিট করা হবে
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Job posted successfully!")),
                    );
                  }
                },
                child: const Text("Post Job"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
