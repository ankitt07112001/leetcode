import 'package:flutter/material.dart';
import '../widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            ProjectCard(
              title: 'E-Commerce App',
              description: 'A full-featured e-commerce application built with Flutter and Firebase. '
                  'Features include product browsing, cart management, user authentication, '
                  'payment integration, and order tracking.',
              imageUrl: 'https://placeholder.svg?height=200&width=400',
              technologies: ['Flutter', 'Firebase', 'Stripe', 'Provider'],
              links: {
                'GitHub': 'https://github.com/username/ecommerce-app',
                'Play Store': 'https://play.google.com/store',
                'App Store': 'https://apps.apple.com',
              },
            ),
            const SizedBox(height: 16),
            ProjectCard(
              title: 'Task Management App',
              description: 'A productivity app that helps users manage their tasks and projects. '
                  'Includes features like task categorization, reminders, recurring tasks, '
                  'and progress tracking with beautiful visualizations.',
              imageUrl: 'https://placeholder.svg?height=200&width=400',
              technologies: ['Flutter', 'SQLite', 'Bloc', 'Local Notifications'],
              links: {
                'GitHub': 'https://github.com/username/task-manager',
                'Play Store': 'https://play.google.com/store',
              },
            ),
            const SizedBox(height: 16),
            ProjectCard(
              title: 'Weather Forecast App',
              description: 'A beautiful weather application that provides current weather conditions '
                  'and forecasts. Features include location-based weather, multiple locations, '
                  'detailed forecasts, and weather alerts.',
              imageUrl: 'https://placeholder.svg?height=200&width=400',
              technologies: ['Flutter', 'OpenWeatherMap API', 'Geolocator', 'Charts'],
              links: {
                'GitHub': 'https://github.com/username/weather-app',
                'Play Store': 'https://play.google.com/store',
                'App Store': 'https://apps.apple.com',
              },
            ),
            const SizedBox(height: 16),
            ProjectCard(
              title: 'Social Media App',
              description: 'A social networking application that allows users to connect, share posts, '
                  'and interact with each other. Features include user profiles, news feed, '
                  'messaging, notifications, and media sharing.',
              imageUrl: 'https://placeholder.svg?height=200&width=400',
              technologies: ['Flutter', 'Firebase', 'Cloud Functions', 'GetX'],
              links: {
                'GitHub': 'https://github.com/username/social-app',
              },
            ),
          ],
        ),
      ),
    );
  }
}
