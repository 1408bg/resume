import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';

class CertificateListWidget extends StatelessWidget {
  final List<Certificate>? certificates;

  const CertificateListWidget({super.key, required this.certificates});

  @override
  Widget build(BuildContext context) {
    if (certificates == null || certificates!.isEmpty) {
      return const Text('자격증 정보 없음');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: certificates!
          .map(
            (cert) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cert.name ?? '자격증명',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text('${cert.issuer ?? ''}${cert.issueDate == null ? '' : " • ${cert.issueDate}"}'),
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}