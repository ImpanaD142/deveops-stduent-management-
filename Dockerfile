#use a base image with python installed
FROM python:3.9-slim

#Set the working directory inside the container
WORKDIR /app

#copy the current directory's contents into the container
COPY . /app

#install Flask inside the container
RUN pip install Flask flask_sqlalchemy

EXPOSE 5001 

#tell docker what command to run the container
CMD ["python","app.py"] 

