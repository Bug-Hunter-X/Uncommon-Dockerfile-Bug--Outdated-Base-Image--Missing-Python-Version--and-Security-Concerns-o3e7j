FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3.10 python3.10-pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt --no-cache-dir
COPY app.py .
CMD ["python3.10", "app.py"]
RUN apt-get clean && rm -rf /var/lib/apt/lists/* 