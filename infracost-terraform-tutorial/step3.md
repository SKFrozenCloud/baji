### Step 3: GitHub Actions CI/CD Workflow

We have configured a CI/CD pipeline using GitHub Actions in the `.github/workflows/ci.yml` file.

1. Navigate to the `.github` directory: `cd ../.github/workflows/`

2. Create `ci.yml` and add the code:

  1. `touch ci.yml`

  2. `nano ci.yml`

  3. Paste the following:

    ```
    name: CI Pipeline

    on:
      push:
        branches:
          - master

    jobs:
      terraform:
        runs-on: ubuntu-latest
        steps:
          - name: Checkout Code
            uses: actions/checkout@v2

          - name: Setup Terraform
            uses: hashicorp/setup-terraform@v1

          - name: Infracost breakdown
            uses: infracost/actions@v2
            with:
              path: ./terraform
              api_key: ${{ secrets.INFRACOST_API_KEY }}

          - name: Post Infracost Comment
            if: github.event_name == 'pull_request'
            run: infracost comment github --path infracost.json --repo ${{ github.repository }} --pull-request ${{ github.event.pull_request.number }}
    ```

  4. Save the file in `nano`
    - After pasting the content, press Ctrl + O to write the changes.
    - Press Enter to confirm the file name.
    - Then, press Ctrl + X to exit `nano`.

    The script will do the following:
    
    - **Infracost Breakdown**: It calculates the cost of the Terraform resources using Infracost.
    - **Post Comment**: If this is a pull request, Infracost will post the cost breakdown as a comment.

3. Navigate to the main directory: `cd ../../`

Then commit the changes:

Run: `git add . && git commit -m "added terraform, infracost and an ci/cd"`
