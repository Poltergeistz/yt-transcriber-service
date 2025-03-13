FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy necessary files
COPY requirements.txt .
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose API port
EXPOSE 5000

# Start the Flask server
CMD ["python", "app.py"]
