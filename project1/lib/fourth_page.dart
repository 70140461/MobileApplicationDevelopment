import 'package:flutter/material.dart';
import 'fifth_page.dart'; 

class FourthPage extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: 'Todo App',
      description: 'A simple todo list app built with Flutter and Firebase.',
    ),
    Project(
      title: 'Weather App',
      description: 'A weather app built with Flutter that fetches data from a REST API.',
    ),
    Project(
      title: 'Expense Tracker App',
      description: 'The app enables users to efficiently manage their expenses on-the-go by providing a user-friendly interface to track their spending habits.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Projects and Experience'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white, 
        elevation: 0,
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FifthPage()),
          );
        },
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ProjectCard(project: projects[index]);
          },
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title,
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              project.description,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Project {
  final String title;
  final String description;

  Project({required this.title, required this.description});
}
