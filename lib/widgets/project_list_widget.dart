import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectListWidget extends StatelessWidget {
  final List<Project>? projects;

  const ProjectListWidget({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    if (projects == null || projects!.isEmpty) {
      return const Text('프로젝트 정보 없음');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: projects!.map(
        (project) => Padding(
          padding: const EdgeInsets.only(bottom: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    project.projectName ?? '무명',
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  if (project.period == null)
                  Text(
                    project.period ?? '기간',
                    style: TextStyle(color: Colors.grey[700])
                  )
                ]
              ),
              if (project.teamSize != null) Text('Headcount: ${project.teamSize}'),
              const SizedBox(height: 8),

              if (project.technologiesUsed != null)
                Wrap(
                  spacing: 6,
                  children: project.technologiesUsed!.map(
                    (tech) => Chip(
                      label: Text(tech),
                      visualDensity: VisualDensity.compact
                    )
                  ).toList()
                ),

              const SizedBox(height: 12),
              if (project.projectOverview != null)
                Text(
                  project.projectOverview!,
                  style: const TextStyle(height: 1.5)
                ),

              const SizedBox(height: 12),
              if (project.features != null) ...[
                const Text(
                  'Key Feature:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ...project.features!.map(
                      (feature) => Padding(
                    padding: const EdgeInsets.only(top: 4, left: 8),
                    child: Text('• $feature'),
                  ),
                ),
                const SizedBox(height: 12),
              ],

              if (project.myRole != null) ...[
                const Text(
                  'My Role:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ...project.myRole!.map(
                      (role) => Padding(
                    padding: const EdgeInsets.only(top: 4, left: 8),
                    child: Text('• $role'),
                  ),
                ),
                const SizedBox(height: 12),
              ],

              if (project.problemSolving != null) ...[
                const Text(
                  'Problem Solving:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ...project.problemSolving!.map(
                      (cs) => Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('💡 ${cs.challenge ?? ''}'),
                        Text('✅ ${cs.solution ?? ''}'),
                        if (cs.outcome != null)
                          Text('📈 ${cs.outcome!}'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],

              if (project.githubLink != null ||
                  project.demoLink != null)
                Wrap(
                  spacing: 16,
                  children: [
                    if (project.githubLink != null)
                      TextButton.icon(
                        icon: const Icon(Icons.code, size: 16),
                        label: const Text('GitHub'),
                        onPressed: () {
                          launchUrl(Uri.parse(project.githubLink!));
                        },
                      ),
                    if (project.demoLink != null)
                      TextButton.icon(
                        icon: const Icon(Icons.launch, size: 16),
                        label: const Text('데모'),
                        onPressed: () {
                          launchUrl(Uri.parse(project.demoLink!));
                        },
                      ),
                  ],
                ),
            ],
          ),
        ),
      ).toList()
    );
  }
}