# pdf-chat

## Backend
The backend uses FastAPI and is located in the `backend` directory. Development is containerized with Docker and dependencies are managed via Poetry.

To start the development server:

```bash
cd backend
make up
```

Run tests and linting:

```bash
make lint
make test
```

## Frontend
The `frontend` directory contains a Vite + React + TypeScript project with
Tailwind CSS, ESLint, Prettier, Husky and Vitest configured.

### Setup

```bash
cd frontend
npm install
npm run dev
```

### Linting and Tests

```bash
npm run lint
npm run test
```

Commits trigger Husky's pre-commit hook which runs formatting, linting and tests.
