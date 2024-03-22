# set base directory
FROM python:3.10-alpine

# Set working directory in docker container
WORKDIR /app

COPY requirements.txt /app

# Install all dependencies re requirement file
RUN pip3 install -r requirements.txt


# Copy all file from context to /app
COPY ./app /app

# Document port
EXPOSE 5000

# entry point
ENTRYPOINT [ "flask" ]

# Run the application
CMD ["--app", "app", "run" ]
