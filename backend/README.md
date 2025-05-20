# Backend

This is a FastAPI backend based on the fastapi-nano template.

## Requirements
- Docker
- Docker Compose
- Poetry
- pre-commit

## Initial Setup
```bash
poetry install
pre-commit install
```

## Development Server
```bash
docker compose up --build
```

## Testing & Linting
```bash
make lint
make test
```

## Production Deployment
Use the provided `Dockerfile` to build and run the application in production.
