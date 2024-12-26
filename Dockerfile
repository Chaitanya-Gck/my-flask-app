# Use the official Python image as a base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application files into the container
COPY . .

# Expose the application on port 5000
EXPOSE 5000

# Command to run the app when the container starts
CMD ["python", "app.py"]

