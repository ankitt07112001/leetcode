import 'package:flutter/material.dart';
import '../widgets/experience_card.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work Experience'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            ExperienceCard(
              companyName: 'Tech Innovators',
              position: 'Senior Flutter Developer',
              duration: 'Jan 2022 - Present',
              description: 'Leading a team of developers to build cross-platform mobile applications using Flutter. '
                  'Implemented complex state management solutions and optimized app performance. '
                  'Mentored junior developers and conducted code reviews.',
              technologies: ['Flutter', 'Dart', 'Firebase', 'REST API', 'GraphQL'],
              logoUrl: 'https://placeholder.svg?height=80&width=80',
            ),
            const SizedBox(height: 16),
            ExperienceCard(
              companyName: 'Mobile Solutions Inc.',
              position: 'Flutter Developer',
              duration: 'Mar 2020 - Dec 2021',
              description: 'Developed and maintained multiple Flutter applications for clients across various industries. '
                  'Integrated third-party services and APIs. Implemented responsive UI designs and animations. '
                  'Collaborated with design and backend teams to deliver high-quality applications.',
              technologies: ['Flutter', 'Dart', 'REST API', 'SQLite', 'Provider'],
              logoUrl: 'https://placeholder.svg?height=80&width=80',
            ),
            const SizedBox(height: 16),
            ExperienceCard(
              companyName: 'App Creators',
              position: 'Junior Mobile Developer',
              duration: 'Jun 2018 - Feb 2020',
              description: 'Started as an intern and grew into a full-time role. Assisted in developing mobile applications '
                  'using Flutter and native Android. Learned about mobile app architecture, state management, '
                  'and UI implementation. Participated in daily stand-ups and sprint planning.',
              technologies: ['Flutter', 'Dart', 'Android', 'Java', 'Git'],
              logoUrl: 'https://placeholder.svg?height=80&width=80',
            ),
          ],
        ),
      ),
    );
  }
}
