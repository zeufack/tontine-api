# set base directory
FROM python:3.9.2

# Set working directory in docker container
WORKDIR /app

COPY requirements.txt /app

# Install all dependencies re requirement file
RUN pip3 install -r requirements.txt


# Copy all file from context to /app
COPY ./app /app

# entry point

ENTRYPOINT [ "flask" ]

# Run the application
CMD ["--app", "app", "run" ]
