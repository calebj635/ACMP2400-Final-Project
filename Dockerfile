FROM python:3.13.13-sha256:26e8ac19247b847ce60bad8584efa9bdd35b42f83beea897fdbe46f32338b9ec

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
