import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';
import 'package:resume/widgets/activity_list_widget.dart';
import 'package:resume/widgets/certificate_list_widget.dart';
import 'package:resume/widgets/education_list_widget.dart';
import 'package:resume/widgets/introduction_widget.dart';
import 'package:resume/widgets/personal_info_widget.dart';
import 'package:resume/widgets/project_list_widget.dart';
import 'package:resume/widgets/section_title_widget.dart';
import 'package:resume/widgets/tech_stacks_widget.dart';
import 'package:resume/widgets/test_result_list_widget.dart';
import 'package:resume/widgets/work_experience_list_widget.dart';

class ResumeWidget extends StatelessWidget {
  final Resume resume;

  const ResumeWidget({super.key, required this.resume});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonalInfoWidget(personalInfo: resume.personalInfo),
          const SizedBox(height: 32),
          SectionTitleWidget(
            title: 'Intro',
            content: IntroductionWidget(introduction: resume.introduction)
          ),
          const SizedBox(height: 32),
          SectionTitleWidget(
            title: 'Tech Stacks',
            content: TechStacksWidget(techStacks: resume.techStacks)
          ),
          const SizedBox(height: 32),
          SectionTitleWidget(
            title: 'Education',
            content: EducationListWidget(education: resume.education),
          ),
          const SizedBox(height: 32),
          // SectionTitleWidget(
          //   title: 'Work Experience',
          //   content: WorkExperienceListWidget(workExperience: resume.workExperience),
          // ),
          const SizedBox(height: 32),
          SectionTitleWidget(
            title: 'Projects',
            content: ProjectListWidget(projects: resume.projects),
          ),
          const SizedBox(height: 32),
          SectionTitleWidget(
            title: 'Certificates',
            content: CertificateListWidget(certificates: resume.certificates),
          ),
          const SizedBox(height: 32),
          SectionTitleWidget(
            title: 'Test Results',
            content: TestResultListWidget(tests: resume.tests),
          ),
          const SizedBox(height: 32),
          SectionTitleWidget(
            title: 'Activities',
            content: ActivityListWidget(activities: resume.activities),
          ),
        ],
      ),
    );
  }
}