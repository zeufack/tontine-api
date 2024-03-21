# set base directory
FROM python:3.9.19-slim

# Set working directory in docker container
WORKDIR /app

# Copy all file from context to /app
COPY . /app

# Install all dependencies re requirement file
RUN pip install -r requirements.txt

# Run the application

CMD [ "flask", "--app", "./app/app", "run" ]
