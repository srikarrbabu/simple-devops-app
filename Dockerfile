# Use a slim version of Python
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app.py .

# Expose the port Flask runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]