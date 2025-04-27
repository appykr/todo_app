# Step 1: Use an official Python image as the base
FROM python:3.9-slim

# Step 2: Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    libssl-dev \
    libffi-dev \
    libjpeg-dev \
    zlib1g-dev \
    && apt-get clean

# Step 3: Set the working directory in the container
WORKDIR /app

# Step 4: Copy the requirements.txt into the container
COPY requirements.txt .

# Step 5: Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 6: Copy the entire project into the container
COPY . .

# Step 7: Expose the port the app runs on
EXPOSE 8000

# Step 8: Set environment variables for Django settings (adjust based on your needs)
ENV PYTHONUNBUFFERED 1

# Step 9: Run Django migrations (optional, but recommended)
RUN python manage.py migrate

# Step 10: Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
