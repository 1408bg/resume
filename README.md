# resume

JSON 데이터로 당신만의 이력서를 제작하세요.

## 기능

* **JSON 기반 이력서 관리:** 이력서 정보를 JSON 파일로 저장.
* **동적 UI:** JSON 데이터 기반 이력서 UI 자동 생성.
* **섹션별 정의:** 이력서 섹션(개인 정보, 학력, 경력, 기술 등) 유연하게 정의.

## JSON 데이터

JSON 형식으로 이력서 데이터를 정의하며, 다음 스키마를 따릅니다:

```json
{
  "resume_schema": {
    "sections": [
      {
        "id": "personalInfo",
        "title": "개인 정보",
        "type": "object",
        "fields": [
          {"id": "name", "label": "이름", "type": "string"},
          {"id": "jobTitle", "label": "직무", "type": "string"},
          {"id": "contact", "label": "연락처", "type": "string"}
        ]
      },
      {
        "id": "introduction",
        "title": "소개",
        "type": "object",
        "fields": [
          {"id": "selfIntroductionText", "label": "자기소개", "type": "string", "multiline": true}
        ]
      },
      {
        "id": "techStacks",
        "title": "기술 스택",
        "type": "object",
        "fields": [
          {"id": "frontend", "label": "프론트엔드", "type": "array", "itemType": "string", "placeholder": "예: React, Vue.js"},
          {"id": "backend", "label": "백엔드", "type": "array", "itemType": "string", "placeholder": "예: Node.js, Spring Boot"},
          {"id": "database", "label": "데이터베이스", "type": "array", "itemType": "string", "placeholder": "예: MySQL, MongoDB"},
          {"id": "devops", "label": "DevOps/인프라", "type": "array", "itemType": "string", "placeholder": "예: Docker, AWS, Kubernetes"},
          {"id": "versionControl", "label": "버전 관리", "type": "array", "itemType": "string", "placeholder": "예: Git, SVN"},
          {"id": "collaboration", "label": "협업 도구", "type": "array", "itemType": "string", "placeholder": "예: Jira, Slack"}
        ]
      },
      {
        "id": "certificates",
        "title": "자격증",
        "type": "array",
        "itemSchema": {
          "type": "object",
          "fields": [
            {"id": "name", "label": "자격증명", "type": "string"},
            {"id": "issueDate", "label": "취득일", "type": "string", "format": "date"},
            {"id": "issuer", "label": "발급기관", "type": "string"}
          ]
        }
      },
      {
        "id": "tests",
        "title": "시험",
        "type": "array",
        "itemSchema": {
          "type": "object",
          "fields": [
            {"id": "testName", "label": "시험명", "type": "string", "placeholder": "예: TOEIC, TOEFL, OPIc, IELTS"},
            {"id": "scoreOrGrade", "label": "점수/등급", "type": "string", "placeholder": "예: 950, IM2, 7.5"},
            {"id": "issueDate", "label": "취득일", "type": "string", "format": "date", "optional": true}
          ]
        }
      },
      {
        "id": "activities",
        "title": "대외 활동",
        "type": "array",
        "itemSchema": {
          "type": "object",
          "fields": [
            {"id": "activityName", "label": "활동명", "type": "string"},
            {"id": "period", "label": "기간", "type": "string", "placeholder": "YYYY.MM ~YYYY.MM"},
            {"id": "description", "label": "상세 내용", "type": "string", "multiline": true, "optional": true}
          ]
        }
      },
      {
        "id": "education",
        "title": "학력",
        "type": "array",
        "itemSchema": {
          "type": "object",
          "fields": [
            {"id": "institution", "label": "기관명", "type": "string"},
            {"id": "major", "label": "전공", "type": "string"},
            {"id": "period", "label": "기간", "type": "string", "placeholder": "YYYY.MM ~YYYY.MM"},
            {"id": "degree", "label": "학위", "type": "string", "optional": true},
            {"id": "gpa", "label": "학점", "type": "string", "optional": true}
          ]
        }
      },
      {
        "id": "workExperience",
        "title": "경력",
        "type": "array",
        "itemSchema": {
          "type": "object",
          "fields": [
            {"id": "companyName", "label": "회사명", "type": "string"},
            {"id": "position", "label": "직위", "type": "string"},
            {"id": "period", "label": "근무 기간", "type": "string", "placeholder": "YYYY.MM ~YYYY.MM (현재 재직중인 경우 'YYYY.MM ~ 현재')"},
            {"id": "responsibilities", "label": "주요 업무 및 성과", "type": "array", "itemType": "string", "multiline": true}
          ]
        }
      },
      {
        "id": "projects",
        "title": "프로젝트",
        "type": "array",
        "itemSchema": {
          "type": "object",
          "fields": [
            {"id": "projectName", "label": "프로젝트명", "type": "string"},
            {"id": "period", "label": "기간", "type": "string", "placeholder": "YYYY.MM ~YYYY.MM"},
            {"id": "teamSize", "label": "팀원 수", "type": "number", "optional": true},
            {"id": "technologiesUsed", "label": "사용 기술", "type": "array", "itemType": "string", "placeholder": "예: Spring Boot, React, Docker"},
            {"id": "projectOverview", "label": "프로젝트 개요", "type": "string", "multiline": true},
            {"id": "features", "label": "주요 기능", "type": "array", "itemType": "string", "multiline": true, "optional": true},
            {"id": "myRole", "label": "나의 역할", "type": "array", "itemType": "string", "multiline": true},
            {
              "id": "challengesAndSolutions",
              "label": "문제 해결 경험",
              "type": "array",
              "itemSchema": {
                "type": "object",
                "fields": [
                  {"id": "challenge", "label": "문제", "type": "string", "multiline": true},
                  {"id": "solution", "label": "해결 방안", "type": "string", "multiline": true},
                  {"id": "outcome", "label": "결과", "type": "string", "multiline": true, "optional": true}
                ]
              },
              "optional": true
            },
            {"id": "githubLink", "label": "GitHub 링크", "type": "string", "format": "url", "optional": true},
            {"id": "demoLink", "label": "데모 링크", "type": "string", "format": "url", "optional": true}
          ]
        }
      }
    ]
  }
}
```