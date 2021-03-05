FROM python:3.8-slim

LABEL author="Kevin C-Dubois"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

WORKDIR /app
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY api .

ENTRYPOINT ["uvicorn"]
CMD ["--host", "0.0.0.0", "--port", "8000", "api:app"]
