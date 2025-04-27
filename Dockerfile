# Step 1: Use an official Python image as the base
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the requirements.txt into the container
COPY requirements.txt .

# Step 4: Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the entire project into the container
COPY . .

# Step 6: Expose the port the app runs on
EXPOSE 8000

# Step 7: Set environment variables for Django settings (adjust based on your needs)
ENV PYTHONUNBUFFERED 1

# Step 8: Run Django migrations (optional, but recommended)
RUN python manage.py migrate

# Step 9: Set the command to start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
