# Use Python 3.8 base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the contents from current directory to /app in the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Command to run the application
CMD ["python", "app.py"]
