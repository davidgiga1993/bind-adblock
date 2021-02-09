FROM python:3.8-slim

COPY ./*.txt ./*.yml ./*.py /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

WORKDIR /app
ENTRYPOINT ["python", "/app/update-zonefile.py"]
