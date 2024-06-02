FROM python:3.9
ENV PYTHONUNBUFFERED=1
WORKDIR /lista2
COPY requirements.txt /lista2/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /lista2/
ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]