# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . .

# Expose the port that the app runs on
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask application
# Use a production-ready WSGI server like Gunicorn instead of app.run() for production
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]