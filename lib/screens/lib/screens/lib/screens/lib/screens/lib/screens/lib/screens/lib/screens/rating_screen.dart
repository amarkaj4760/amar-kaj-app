import 'package:flutter/material.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double _rating = 0.0;
  final TextEditingController _reviewController = TextEditingController();

  final List<Map<String, dynamic>> reviews = [];

  void submitReview() {
    if (_rating > 0 && _reviewController.text.isNotEmpty) {
      setState(() {
        reviews.add({
          'rating': _rating,
          'review': _reviewController.text,
        });
        _rating = 0.0;
        _reviewController.clear();
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Review submitted")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rate & Review"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text("Give your rating:"),
            Slider(
              value: _rating,
              onChanged: (value) {
                setState(() {
                  _rating = value;
                });
              },
              divisions: 5,
              label: _rating.toString(),
              min: 0,
              max: 5,
            ),
            TextField(
              controller: _reviewController,
              decoration: const InputDecoration(
                labelText: "Write your review",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: submitReview,
              child: const Text("Submit"),
            ),
            const Divider(height: 30),
            const Text("User Reviews:", style: TextStyle(fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView.builder(
                itemCount: reviews.length,
                itemBuilder: (context, index) {
                  final item = reviews[index];
                  return ListTile(
                    title: Text("⭐ ${item['rating']}"),
                    subtitle: Text(item['review']),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
