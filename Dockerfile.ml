# Ubuntu base image
FROM ubuntu:latest

# Install Python and other dependencies
RUN apt-get update && apt-get install -y python3 python3-pip

# Install ML libraries (like TensorFlow, PyTorch, etc.)
RUN pip3 install tensorflow

# Copy your ML app source code to the container
COPY . /app
WORKDIR /app

# Command to run your ML app
CMD ["python3", "master.py"]
