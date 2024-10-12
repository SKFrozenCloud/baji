### Step 4: Running nektos/act locally to test

Before pushing to GitHub, you can test the GitHub Actions workflow locally using `nektos/act`.

1. Make sure Docker is running.
2. In your project root, run the following command to simulate a push event:
   ```bash
   act push -j terraform
