FROM python:latest

WORKDIR /app
COPY requirements.txt .
RUN apt-get update && apt-get install -y curl
RUN pip install -r requirements.txt
ADD app.py /app/app.py

EXPOSE 5000
CMD ["python", "app.py"]
