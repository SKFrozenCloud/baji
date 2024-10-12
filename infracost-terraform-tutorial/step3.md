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

      - name: Infracost breakdown
        uses: infracost/actions@v2
        with:
          path: ./terraform
          api_key: ${{ secrets.INFRACOST_API_KEY }}

      - name: Post Infracost Comment
        if: github.event_name == 'pull_request'
        run: infracost comment github --path infracost.json --repo ${{ github.repository }} --pull-request ${{ github.event.pull_request.number }}
```

The script will do the following:
1. **Infracost Breakdown**: It calculates the cost of the Terraform resources using Infracost.
2. **Post Comment**: If this is a pull request, Infracost will post the cost breakdown as a comment.

Then commit the changes:

Run: `git add . && git commit -m "added terraform, infracost and an ci/cd"`
