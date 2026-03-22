FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

#ENV PYTHONPATH="${PYTHONPATH}:/app"


COPY requirements.txt /app


RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt


COPY . .


CMD ["python3", "manage.py", "runserver","0.0.0.0:8000"]

#EXPOSE 9099