### Step 3: GitHub Actions CI/CD Workflow

We have configured a CI/CD pipeline using GitHub Actions in the `.github/workflows/ci.yml` file.

Key Steps:
1. **Terraform Plan**: It runs `terraform plan` to generate a plan of your infrastructure.
2. **Infracost Breakdown**: It calculates the cost of the Terraform resources using Infracost.
3. **Post Comment**: If this is a pull request, Infracost will post the cost breakdown as a comment.

You can review the GitHub Actions workflow file in `/home/kodekloud/.github/workflows/ci.yml`.
