# set base directory
FROM python:3.9.19-slim

# Set working directory in docker container
WORKDIR /app

# Copy all file from context to /app
COPY . /app

# Install all dependencies re requirement file
#RUN ls -al

# Run the application

CMD [ "ls", "-a" ]
