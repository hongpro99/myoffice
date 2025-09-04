# syntax=docker/dockerfile:1
FROM python:3.12-slim AS runtime

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_NO_CACHE_DIR=1 \
    DJANGO_SETTINGS_MODULE=config.settings

WORKDIR /app

# 유틸(헬스체크/DB대기)만 설치
RUN apt-get update && apt-get install -y --no-install-recommends \
    netcat-traditional curl && \
    rm -rf /var/lib/apt/lists/*

# 의존성
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

# 앱 소스
COPY . /app/

# 엔트리포인트
COPY docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8000
# 컨테이너 내부 헬스체크
HEALTHCHECK --interval=30s --timeout=3s --retries=3 CMD curl -fsS http://localhost:8000/healthz || exit 1

CMD ["/entrypoint.sh"]
