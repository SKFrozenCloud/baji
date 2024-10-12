### Step 3: GitHub Actions CI/CD Workflow

We have configured a CI/CD pipeline using GitHub Actions in the `.github/workflows/ci.yml` file.

Create `ci.yml` and add the following:

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

      - name: Terraform Init
        run: terraform init
        working-directory: ./terraform

      - name: Terraform Plan
        run: terraform plan -out=tfplan
        working-directory: ./terraform

      - name: Infracost breakdown
        uses: infracost/actions@v2
        with:
          path: ./terraform/tfplan
          # Use your own Infracost API Key
          api_key: ${{ secrets.INFRACOST_API_KEY }}

      - name: Post Infracost Comment
        if: github.event_name == 'pull_request'
        run: infracost comment github --path infracost.json --repo ${{ github.repository }} --pull-request ${{ github.event.pull_request.number }}
```

Then create a git repository and commit the changes:

Run: `git init && git add . && git commit -m "Initial commit"`

Key Steps:
1. **Terraform Plan**: It runs `terraform plan` to generate a plan of your infrastructure.
2. **Infracost Breakdown**: It calculates the cost of the Terraform resources using Infracost.
3. **Post Comment**: If this is a pull request, Infracost will post the cost breakdown as a comment.

You can review the GitHub Actions workflow file in `/home/kodekloud/.github/workflows/ci.yml`.
