import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';

class PersonalInfoWidget extends StatelessWidget {
  final PersonalInfo? personalInfo;

  const PersonalInfoWidget({super.key, required this.personalInfo});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (personalInfo?.profileUrl != null) ClipRRect(
          borderRadius: BorderRadius.circular(15),
          // child: Image.network(
          //   personalInfo!.profileUrl!,
          child: Image.asset(
            'assets/profile.jpg',
            width: 150,
            height: 150,
            fit: BoxFit.cover
          )
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                personalInfo?.jobTitle ?? '무직',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)
              ),
              Wrap(
                spacing: 10,
                children: [
                  Text(
                    personalInfo?.name ?? '무명',
                    style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  if (personalInfo?.globalName != null) Text(
                    personalInfo!.globalName!,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300, color: Colors.grey[500]),
                    overflow: TextOverflow.ellipsis
                  )
                ]
              ),
              const SizedBox(height: 12),
              if (personalInfo?.contact != null) Text(
                personalInfo!.contact!,
                style: const TextStyle(fontSize: 16)
              )
            ]
          ),
        )
      ]
    );
  }
}