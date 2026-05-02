FROM python:3.14
#EXPOSE 5000
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
#CMD ["gunicorn", "app:create_app()", "--bind", "0.0.0.0:80"]
CMD ["/bin/bash", "docker-entrypoint.sh"]
#CMD ["flask", "run", "--host", "0.0.0.0"]