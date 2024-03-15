#Using the official python image as base image
FROM python:3.9-slim-buster

#Set the working directory in the container
WORKDIR /app

#Copy the requirements file to working directory
COPY requirements.txt .

#Install the required python packages
RUN pip3 install --no-cache-dir -r requirements.txt

#Copy the application to the working directory
COPY . .

#set the env var for the flask app
ENV FLASK_RUN_HOST=0.0.0.0

#Expose the port on which flask app will run
EXPOSE 5000

#start the flask app when the container is running
CMD ["flask", "run"]
