# Junie CLI Container

# Setup

1. Create a `.env` file with the path to the code you want to be available to Junie CLI
2. Build the container

```bash
docker compose build
```

# Usage

Once the container is built, in your local machine you can run a Junie CLI interactive session on a subdirectory
of your root path with

 ```bash
docker compose run --rm -w /code/subdir junie
```

**Authentication**:

- **Using API Key**: If you have a `JUNIE_API_KEY`, you can pass it directly:

```bash
JUNIE_API_KEY=your_key_here docker compose run --rm -w /code/subdir junie
```

- **Browser Login**: If you run it without a key, Junie will provide a login link. Since the container is running in
  your terminal (`tty: true`), you can follow the instructions to authenticate via your host's browser.
