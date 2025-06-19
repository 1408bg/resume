import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class Resume {
  final PersonalInfo? personalInfo;
  final Introduction? introduction;
  final TechStacks? techStacks;
  final List<Certificate>? certificates;
  final List<TestResult>? tests;
  final List<Activity>? activities;
  final List<Education>? education;
  final List<WorkExperience>? workExperience;
  final List<Project>? projects;

  const Resume({
    this.personalInfo,
    this.introduction,
    this.techStacks,
    this.certificates,
    this.tests,
    this.activities,
    this.education,
    this.workExperience,
    this.projects,
  });

  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);

  Map<String, dynamic> toJson() => _$ResumeToJson(this);
}

@JsonSerializable()
class PersonalInfo {
  final String? name;
  final String? globalName;
  final String? profileUrl;
  final String? jobTitle;
  final String? contact;

  const PersonalInfo({this.name, this.globalName, this.profileUrl, this.jobTitle, this.contact});

  factory PersonalInfo.fromJson(Map<String, dynamic> json) => _$PersonalInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PersonalInfoToJson(this);
}

@JsonSerializable()
class Introduction {
  final String? selfIntroductionText;

  const Introduction({this.selfIntroductionText});

  factory Introduction.fromJson(Map<String, dynamic> json) => _$IntroductionFromJson(json);

  Map<String, dynamic> toJson() => _$IntroductionToJson(this);
}

@JsonSerializable()
class TechStacks {
  final List<String>? frontend;
  final List<String>? backend;
  final List<String>? database;
  final List<String>? devops;
  final List<String>? versionControl;
  final List<String>? collaboration;

  const TechStacks({
    this.frontend,
    this.backend,
    this.database,
    this.devops,
    this.versionControl,
    this.collaboration,
  });

  factory TechStacks.fromJson(Map<String, dynamic> json) => _$TechStacksFromJson(json);

  Map<String, dynamic> toJson() => _$TechStacksToJson(this);
}

@JsonSerializable()
class Certificate {
  final String? name;
  final String? issueDate;
  final String? issuer;

  const Certificate({this.name, this.issueDate, this.issuer});

  factory Certificate.fromJson(Map<String, dynamic> json) => _$CertificateFromJson(json);

  Map<String, dynamic> toJson() => _$CertificateToJson(this);
}

@JsonSerializable()
class TestResult {
  final String? testName;
  final String? scoreOrGrade;
  final String? issueDate;

  const TestResult({this.testName, this.scoreOrGrade, this.issueDate});

  factory TestResult.fromJson(Map<String, dynamic> json) => _$TestResultFromJson(json);

  Map<String, dynamic> toJson() => _$TestResultToJson(this);
}

@JsonSerializable()
class Activity {
  final String? activityName;
  final String? period;
  final String? description;

  const Activity({this.activityName, this.period, this.description});

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityToJson(this);
}

@JsonSerializable()
class Education {
  final String? institution;
  final String? major;
  final String? period;
  final String? degree;
  final String? gpa;

  const Education({this.institution, this.major, this.period, this.degree, this.gpa});

  factory Education.fromJson(Map<String, dynamic> json) => _$EducationFromJson(json);

  Map<String, dynamic> toJson() => _$EducationToJson(this);
}

@JsonSerializable()
class WorkExperience {
  final String? companyName;
  final String? position;
  final String? period;
  final List<String>? responsibilities;

  const WorkExperience({this.companyName, this.position, this.period, this.responsibilities});

  factory WorkExperience.fromJson(Map<String, dynamic> json) => _$WorkExperienceFromJson(json);

  Map<String, dynamic> toJson() => _$WorkExperienceToJson(this);
}

@JsonSerializable()
class Project {
  final String? projectName;
  final String? period;
  final int? teamSize;
  final List<String>? technologiesUsed;
  final String? projectOverview;
  final List<String>? features;
  final List<String>? myRole;
  final List<ChallengeAndSolution>? problemSolving;
  final String? githubLink;
  final String? demoLink;

  const Project({
    this.projectName,
    this.period,
    this.teamSize,
    this.technologiesUsed,
    this.projectOverview,
    this.features,
    this.myRole,
    this.problemSolving,
    this.githubLink,
    this.demoLink,
  });

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

@JsonSerializable()
class ChallengeAndSolution {
  final String? challenge;
  final String? solution;
  final String? outcome;

  const ChallengeAndSolution({this.challenge, this.solution, this.outcome});

  factory ChallengeAndSolution.fromJson(Map<String, dynamic> json) => _$ChallengeAndSolutionFromJson(json);

  Map<String, dynamic> toJson() => _$ChallengeAndSolutionToJson(this);
}