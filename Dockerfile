FROM python:3.12-slim
WORKDIR /app
COPY helloworld.py .
CMD ["python", "helloworld.py"]