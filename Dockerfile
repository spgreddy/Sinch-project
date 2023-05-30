FROM python:alpine3.18

WORKDIR /app

COPY trdl.py /app/
COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["python", "trdl.py"]
