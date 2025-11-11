FROM python:3.13-alpine

# Install system dependencies with pinned versions
RUN apk add --no-cache \
    gcc \
    musl-dev \
    libffi-dev

WORKDIR /code

# Copy only requirements first to leverage Docker layer caching
COPY requirements.txt /code/requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the rest of the application code
COPY . /code

# Set the default command to run the application
CMD ["python", "main.py"]
