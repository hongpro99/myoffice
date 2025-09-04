# 🗂️ Django Backoffice System

## 📌 프로젝트 개요
`Django Backoffice System`은 사내 데이터를 효율적으로 관리하기 위해 제작된 **백오피스 웹 애플리케이션**  


---

## 🎯 프로젝트 목표
- **관리자 친화적 UI**를 제공하여 데이터 입력 오류를 최소화
- **권한 제어 및 로그 관리**를 통해 데이터 보안 강화
- 효율적인 검색/필터 기능으로 운영 속도 개선

---

## 🛠️ 기술 스택

### Language
- Python (Django)

### Backend
- Django (Admin + Custom Views)
- Django ORM (DB 모델링 및 쿼리)

### Infra / DB
- PostgreSQL (운영 DB)
- Docker (개발/배포 환경)
- AWS EC2 (배포 환경)

### ETC
- Bootstrap / Django Template (UI)

---

## ⚙️ 아키텍처
```text
Django App
   ├── Models (DB 스키마)
   ├── Views (CRUD & Custom API)
   ├── Templates (UI, Bootstrap)
   └── Admin (권한 관리 및 데이터 관리)
        └── PostgreSQL (데이터 저장)
