# Use official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy code and install dependencies
COPY . .
RUN pip install -r requirements.txt

# Expose the port the app runs on
EXPOSE 80

# Run the application
CMD ["python", "app.py"]
