import 'package:flutter/material.dart';
import '../widgets/skill_category.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            SkillCategory(
              title: 'Programming Languages',
              skills: [
                {'name': 'Dart', 'level': 0.9},
                {'name': 'JavaScript', 'level': 0.8},
                {'name': 'Java', 'level': 0.7},
                {'name': 'Python', 'level': 0.6},
                {'name': 'Kotlin', 'level': 0.6},
              ],
            ),
            const SizedBox(height: 24),
            SkillCategory(
              title: 'Frameworks & Libraries',
              skills: [
                {'name': 'Flutter', 'level': 0.95},
                {'name': 'React Native', 'level': 0.7},
                {'name': 'Android SDK', 'level': 0.75},
                {'name': 'Firebase', 'level': 0.85},
                {'name': 'Node.js', 'level': 0.6},
              ],
            ),
            const SizedBox(height: 24),
            SkillCategory(
              title: 'Tools & Technologies',
              skills: [
                {'name': 'Git', 'level': 0.85},
                {'name': 'REST APIs', 'level': 0.9},
                {'name': 'GraphQL', 'level': 0.7},
                {'name': 'CI/CD', 'level': 0.75},
                {'name': 'Agile/Scrum', 'level': 0.8},
              ],
            ),
            const SizedBox(height: 24),
            SkillCategory(
              title: 'Design & UI/UX',
              skills: [
                {'name': 'UI Design', 'level': 0.8},
                {'name': 'Animations', 'level': 0.85},
                {'name': 'Responsive Design', 'level': 0.9},
                {'name': 'Figma', 'level': 0.7},
                {'name': 'Adobe XD', 'level': 0.65},
              ],
            ),
            const SizedBox(height: 24),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Certifications',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 16),
                    _buildCertification(
                      context,
                      title: 'Flutter Development Bootcamp',
                      issuer: 'Udemy',
                      date: 'March 2021',
                    ),
                    const Divider(),
                    _buildCertification(
                      context,
                      title: 'Mobile App Development Specialist',
                      issuer: 'Google',
                      date: 'January 2022',
                    ),
                    const Divider(),
                    _buildCertification(
                      context,
                      title: 'Firebase for Flutter',
                      issuer: 'Google',
                      date: 'June 2022',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCertification(
    BuildContext context, {
    required String title,
    required String issuer,
    required String date,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.verified,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Issued by $issuer • $date',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
