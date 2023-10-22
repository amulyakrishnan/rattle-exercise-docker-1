# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app/hello.py .

# Install Flask and other dependencies
RUN pip install Flask

# Expose port 80 to the outside world
EXPOSE 80

# Define environment variable
ENV NAME=Docker

# Run hello.py when the container launches
CMD ["python", "hello.py"]