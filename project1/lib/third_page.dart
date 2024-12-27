import 'package:flutter/material.dart';
import 'fourth_page.dart'; 

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text('Skills'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FourthPage()),
          );
        },
        child: SkillProgressBars(),
      ),
    );
  }
}

class SkillProgressBars extends StatelessWidget {
  final List<Skill> skills = [
    Skill('Flutter', 90),
    Skill('Dart', 70),
    Skill('UI/UX Design', 20),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: skills.length,
      itemBuilder: (context, index) {
        return SkillCard(skill: skills[index]);
      },
    );
  }
}

class SkillCard extends StatelessWidget {
  final Skill skill;

  const SkillCard({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              skill.name,
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: LinearProgressIndicator(
                value: skill.percentage / 100,
                backgroundColor: Colors.white,
                color: Colors.black,
              ),
            ),
            
            const SizedBox(width: 10),
            Text(
              '${skill.percentage}%',
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Skill {
  final String name;
  final int percentage;

  Skill(this.name, this.percentage);
}
