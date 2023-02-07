FROM python:3.9-slim-buster
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "app.py"]

$ docker build -t my-app .


$ docker run -p 5000:5000 my-app

$ curl http://localhost:5000

$ docker tag my-app your-docker-username/my-app
$ docker push your-docker-username/my-app
