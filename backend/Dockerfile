# Use the official Python image as the base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /backend

# Copy the requirements file into the container at /backend
COPY requirements.txt /backend/requirements.txt

# Install dependencies
RUN apt-get update && apt-get install -y libgl1-mesa-glx libcrypt1
RUN pip install --no-cache-dir -r /backend/requirements.txt

# Copy the rest of the application code into the container at /backend
COPY . /backend

# Set the working directory to /backend
WORKDIR /backend

# Command to run on container start
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
