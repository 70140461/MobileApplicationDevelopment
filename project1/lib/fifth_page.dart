import 'package:flutter/material.dart'; 

class FifthPage extends StatelessWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text('Portfolio Interest Section'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Interests:',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),

            buildInterest('Mobile App Development', 'Creating innovative and user-friendly mobile applications.'),
            buildInterest('UI/UX Design', 'Creating user-friendly interfaces and engaging user experiences.'),
            buildInterest('Machine Learning', 'Exploring algorithms and building models for AI-driven applications.'),
            buildInterest('Cloud Computing', 'Leveraging cloud platforms for efficient and scalable solutions.'),
            
          ],
        ),
      ),
    );
  }
  Widget buildInterest(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16.0),
        const Divider(
          thickness: 4,
          color: Colors.black,
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
