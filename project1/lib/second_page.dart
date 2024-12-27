import 'package:flutter/material.dart';
import 'third_page.dart'; 

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ThirdPage()),
          );
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildInfoRow('Profession', 'IT Engineer'),
              const Divider(thickness: 4, color: Colors.black),
              const SizedBox(height: 10),
              buildInfoRow('Date Of Birth', '04-07-2002'),
              const Divider(thickness: 4, color: Colors.black),
              const SizedBox(height: 10),
              buildInfoRow('Education', 'Higher Education'),
              const Divider(thickness: 4, color: Colors.black),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ThirdPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white, 
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  child: const Text('CHECK RESUME'),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Education',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Divider(thickness: 4, color: Colors.black),
              buildEducationRow(
                'Graduation',
                'The University Of Lahore',
                'Bachelor of Science in Information Engineering Technology, BSIET (Continue).',
              ),
              const Divider(thickness: 4, color: Colors.black),
              buildEducationRow(
                'Intermediate',
                'Punjab Collage,Kasur',
                'ICS. (2019-2021)',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget buildEducationRow(String title, String institution, String details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              institution,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          details,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
