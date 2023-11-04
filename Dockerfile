# The base image
FROM ubuntu:latest

# Install python and pip
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential

# Copy requirements file and install dependencies
COPY src/requirements.txt .
RUN pip3 install -r src/requirements.txt

# Copy the Python application files
COPY src .

# Declare the port number the container should expose
EXPOSE 5000

# Run the application
CMD ["python3", "src/app.py"]
