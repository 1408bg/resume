import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';

class TechStacksWidget extends StatelessWidget {
  final TechStacks? techStacks;

  const TechStacksWidget({super.key, required this.techStacks});

  @override
  Widget build(BuildContext context) {
    if (techStacks == null) return const SizedBox();

    return Wrap(
      spacing: 16,
      runSpacing: 24,
      children: [
        _buildTechCategory('FrontEnd', techStacks!.frontend),
        _buildTechCategory('BackEnd', techStacks!.backend),
        _buildTechCategory('DataBase', techStacks!.database),
        _buildTechCategory('DevOps', techStacks!.devops),
        _buildTechCategory('VersionControl', techStacks!.versionControl),
        _buildTechCategory('Collaboration', techStacks!.collaboration)
      ]
    );
  }

  Widget _buildTechCategory(String title, List<String>? items) {
    if (items == null || items.isEmpty) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: items.map((tech) => Chip(label: Text(tech))).toList()
        )
      ]
    );
  }
}