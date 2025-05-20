up:
	docker compose up --build -d

down:
	docker compose down

logs:
	docker compose logs -f --tail 100

test:
	poetry run pytest -q

lint:
	poetry run ruff check app && poetry run mypy app

format:
	poetry run black .
