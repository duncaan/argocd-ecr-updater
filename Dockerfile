FROM python:3.10-slim
LABEL "app"="argocd-ecr-updater"
ENV PYTHONUNBUFFERED=0

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY argocd-ecr-updater.py .

CMD ["python", "-u", "argocd-ecr-updater.py"]
