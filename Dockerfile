FROM python:3.8-slim

# Install the required packages.
RUN pip install google-auth google-auth-oauthlib google-auth-httplib2 google-api-python-client requests

# Copy the script into the image.
COPY script.py /app/script.py

# Set the working directory and entrypoint.
WORKDIR /app
ENTRYPOINT ["python", "script.py"]

#docker build -t my-image .
#docker run -e GITHUB_TOKEN=<GITHUB_TOKEN> -e GOOGLE_SHEETS_API_KEY=<GOOGLE_SHEETS_API_KEY> -e SPREADSHEET_ID=<SPREADSHEET_ID> my-image
