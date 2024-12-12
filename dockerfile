# Base Image Layer - Linux OS with Python adapted packages
FROM python:slim-bookworm

# Define the workdir
WORKDIR /usr/src/app

# Mount project into container
COPY . .

# Install dependencies with pip
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port 5000
EXPOSE 5000

# Start the application
CMD [ "python","app.py" ]

