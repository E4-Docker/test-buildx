FROM python:3.14-slim

# uv 설치
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Python 프로젝트 복사
WORKDIR /app
COPY .python-version pyproject.toml uv.lock ./
COPY src/ .

# Python 실행
ENTRYPOINT ["uv", "run", "app"]