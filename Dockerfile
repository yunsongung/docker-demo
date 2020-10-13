# Dockerfile
FROM ubuntu:18.04

RUN apt-get update \
	&& apt-get install -y \
	python-pip \
	python-dev

WORKDIR /app
COPY requirement.txt .
RUN pip install -r requirement.txt

COPY app.py .

CMD ["python", "app.py"]
