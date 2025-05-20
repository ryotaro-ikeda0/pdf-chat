FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1

RUN groupadd -g 1001 app && \
    useradd -m -u 1001 -g app app

WORKDIR /code

RUN pip install --no-cache-dir poetry
COPY pyproject.toml poetry.lock* /code/
RUN poetry install --no-root --only main,dev

COPY . /code

USER app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
