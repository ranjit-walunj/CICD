# Upgrade to Bookworm (Debian 12) to fix glibc and system library CVEs
FROM python:3.9-slim-bookworm

# Set the working directory
WORKDIR /app

# Upgrade core build tools to fix CVE-2024-6345 and CVE-2025-47273
RUN pip install --no-cache-dir --upgrade pip setuptools wheel

# Copy requirements first to leverage Docker layer caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the Flask port
EXPOSE 5000

# Security Best Practice: Run as a non-root user
# Debian-based images include a 'python' or 'nobody' user by default
USER nobody

# Define environment variables
ENV FLASK_APP=app.py
ENV FLASK_DEBUG=False

# Run using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]