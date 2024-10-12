
#### 11. **step5.md**
Title: Step 5 - Modifying Terraform and observing cost changes

```markdown
### Step 5: Modifying Terraform and observing cost changes

Let's modify the Terraform configuration and observe how the cost changes:

1. Open the `main.tf` file in `/home/kodekloud/terraform/`.
2. Change the `acl` parameter from `"private"` to `"public-read"`.
3. Re-run the workflow with `act`:
   ```bash
   act push -j terraform
