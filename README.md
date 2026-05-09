# Junie CLI Container

# Setup

1. Create a `.env` file with the path to the code you want to be available to Junie CLI
2. Build the container

```bash
docker compose build
```

# Usage

Once the container is built, you can use the provided script to run Junie from any directory:

1.  **Add the script to your PATH** (optional but recommended):
    ```bash
    ln -s $(pwd)/junie-cli-local /usr/local/bin/junie
    ```

2.  **Create an API key file**:
    Create a file named `.junie-api-key` in your home directory (`~/.junie-api-key`) or current directory and paste your API key there.

3.  **Run Junie**:
    ```bash
    junie-cli-local
    ```
    (or just `junie` if you created the symlink)

The script automatically mounts your current directory to `/code` inside the container.

## Manual Usage

Alternatively, you can run a Junie CLI interactive session on a subdirectory with:

 ```bash
docker run --rm -it -w /code/subdir junie-cli-local
```

**Authentication**:

- **Using API Key**: If you have a `JUNIE_API_KEY`, you can pass it directly:

```bash
docker run --rm -it -w /code/subdir -e JUNIE_API_KEY=$JUNIE_API_KEY junie-cli-local
```

- **Browser Login**: If you run it without a key, Junie will provide a login link. Since the container is running in
  your terminal (`tty: true`), you can follow the instructions to authenticate via your host's browser.
