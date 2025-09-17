FROM python:3.10-slim

# Set working directory
WORKDIR /app

FROM python:3.10-slim
# Set working directory
WORKDIR /app

# Install Flask directly (no requirements.txt)
RUN pip install --no-cache-dir flask

# Copy application code
COPY . .

# Expose Flask default port
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"]

