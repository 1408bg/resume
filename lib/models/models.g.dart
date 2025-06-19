// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resume _$ResumeFromJson(Map<String, dynamic> json) => Resume(
  personalInfo:
      json['personalInfo'] == null
          ? null
          : PersonalInfo.fromJson(json['personalInfo'] as Map<String, dynamic>),
  introduction:
      json['introduction'] == null
          ? null
          : Introduction.fromJson(json['introduction'] as Map<String, dynamic>),
  techStacks:
      json['techStacks'] == null
          ? null
          : TechStacks.fromJson(json['techStacks'] as Map<String, dynamic>),
  certificates:
      (json['certificates'] as List<dynamic>?)
          ?.map((e) => Certificate.fromJson(e as Map<String, dynamic>))
          .toList(),
  tests:
      (json['tests'] as List<dynamic>?)
          ?.map((e) => TestResult.fromJson(e as Map<String, dynamic>))
          .toList(),
  activities:
      (json['activities'] as List<dynamic>?)
          ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
  education:
      (json['education'] as List<dynamic>?)
          ?.map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
  workExperience:
      (json['workExperience'] as List<dynamic>?)
          ?.map((e) => WorkExperience.fromJson(e as Map<String, dynamic>))
          .toList(),
  projects:
      (json['projects'] as List<dynamic>?)
          ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
  'personalInfo': instance.personalInfo,
  'introduction': instance.introduction,
  'techStacks': instance.techStacks,
  'certificates': instance.certificates,
  'tests': instance.tests,
  'activities': instance.activities,
  'education': instance.education,
  'workExperience': instance.workExperience,
  'projects': instance.projects,
};

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) => PersonalInfo(
  name: json['name'] as String?,
  globalName: json['globalName'] as String?,
  profileUrl: json['profileUrl'] as String?,
  jobTitle: json['jobTitle'] as String?,
  contact: json['contact'] as String?,
);

Map<String, dynamic> _$PersonalInfoToJson(PersonalInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'globalName': instance.globalName,
      'profileUrl': instance.profileUrl,
      'jobTitle': instance.jobTitle,
      'contact': instance.contact,
    };

Introduction _$IntroductionFromJson(Map<String, dynamic> json) =>
    Introduction(selfIntroductionText: json['selfIntroductionText'] as String?);

Map<String, dynamic> _$IntroductionToJson(Introduction instance) =>
    <String, dynamic>{'selfIntroductionText': instance.selfIntroductionText};

TechStacks _$TechStacksFromJson(Map<String, dynamic> json) => TechStacks(
  frontend:
      (json['frontend'] as List<dynamic>?)?.map((e) => e as String).toList(),
  backend:
      (json['backend'] as List<dynamic>?)?.map((e) => e as String).toList(),
  database:
      (json['database'] as List<dynamic>?)?.map((e) => e as String).toList(),
  devops: (json['devops'] as List<dynamic>?)?.map((e) => e as String).toList(),
  versionControl:
      (json['versionControl'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  collaboration:
      (json['collaboration'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$TechStacksToJson(TechStacks instance) =>
    <String, dynamic>{
      'frontend': instance.frontend,
      'backend': instance.backend,
      'database': instance.database,
      'devops': instance.devops,
      'versionControl': instance.versionControl,
      'collaboration': instance.collaboration,
    };

Certificate _$CertificateFromJson(Map<String, dynamic> json) => Certificate(
  name: json['name'] as String?,
  issueDate: json['issueDate'] as String?,
  issuer: json['issuer'] as String?,
);

Map<String, dynamic> _$CertificateToJson(Certificate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'issueDate': instance.issueDate,
      'issuer': instance.issuer,
    };

TestResult _$TestResultFromJson(Map<String, dynamic> json) => TestResult(
  testName: json['testName'] as String?,
  scoreOrGrade: json['scoreOrGrade'] as String?,
  issueDate: json['issueDate'] as String?,
);

Map<String, dynamic> _$TestResultToJson(TestResult instance) =>
    <String, dynamic>{
      'testName': instance.testName,
      'scoreOrGrade': instance.scoreOrGrade,
      'issueDate': instance.issueDate,
    };

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
  activityName: json['activityName'] as String?,
  period: json['period'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
  'activityName': instance.activityName,
  'period': instance.period,
  'description': instance.description,
};

Education _$EducationFromJson(Map<String, dynamic> json) => Education(
  institution: json['institution'] as String?,
  major: json['major'] as String?,
  period: json['period'] as String?,
  degree: json['degree'] as String?,
  gpa: json['gpa'] as String?,
);

Map<String, dynamic> _$EducationToJson(Education instance) => <String, dynamic>{
  'institution': instance.institution,
  'major': instance.major,
  'period': instance.period,
  'degree': instance.degree,
  'gpa': instance.gpa,
};

WorkExperience _$WorkExperienceFromJson(Map<String, dynamic> json) =>
    WorkExperience(
      companyName: json['companyName'] as String?,
      position: json['position'] as String?,
      period: json['period'] as String?,
      responsibilities:
          (json['responsibilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$WorkExperienceToJson(WorkExperience instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'position': instance.position,
      'period': instance.period,
      'responsibilities': instance.responsibilities,
    };

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
  projectName: json['projectName'] as String?,
  period: json['period'] as String?,
  teamSize: (json['teamSize'] as num?)?.toInt(),
  technologiesUsed:
      (json['technologiesUsed'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  projectOverview: json['projectOverview'] as String?,
  features:
      (json['features'] as List<dynamic>?)?.map((e) => e as String).toList(),
  myRole: (json['myRole'] as List<dynamic>?)?.map((e) => e as String).toList(),
  problemSolving:
      (json['problemSolving'] as List<dynamic>?)
          ?.map((e) => ChallengeAndSolution.fromJson(e as Map<String, dynamic>))
          .toList(),
  githubLink: json['githubLink'] as String?,
  demoLink: json['demoLink'] as String?,
);

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
  'projectName': instance.projectName,
  'period': instance.period,
  'teamSize': instance.teamSize,
  'technologiesUsed': instance.technologiesUsed,
  'projectOverview': instance.projectOverview,
  'features': instance.features,
  'myRole': instance.myRole,
  'problemSolving': instance.problemSolving,
  'githubLink': instance.githubLink,
  'demoLink': instance.demoLink,
};

ChallengeAndSolution _$ChallengeAndSolutionFromJson(
  Map<String, dynamic> json,
) => ChallengeAndSolution(
  challenge: json['challenge'] as String?,
  solution: json['solution'] as String?,
  outcome: json['outcome'] as String?,
);

Map<String, dynamic> _$ChallengeAndSolutionToJson(
  ChallengeAndSolution instance,
) => <String, dynamic>{
  'challenge': instance.challenge,
  'solution': instance.solution,
  'outcome': instance.outcome,
};
