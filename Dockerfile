# Step 1: Base Image
FROM python:3.9-slim

# Step 2: Working Directory
WORKDIR /app

# Step 3: Copy requirements and install
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Step 4: Copy the app code
COPY . .

# Step 5: Run command
CMD ["python", "app.py"]
