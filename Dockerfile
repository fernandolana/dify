FROM python:3.10

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y build-essential && \
    pip install --upgrade pip && \
    pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry install --no-dev

CMD ["python", "-m", "api"]
