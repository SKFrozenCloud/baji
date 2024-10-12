
#### 11. **step5.md**
Title: Step 5 - Modifying Terraform and observing cost changes

```markdown
### Step 5: Modifying Terraform and observing cost changes

Let's modify the Terraform configuration and observe how the cost changes:

1. Open the `main.tf` file in `/home/kodekloud/terraform/`.

2. Change the terraform file to this:

```
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "big_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "m5.large"
}
```

3. Re-run the workflow with `act`:
   ```bash
   act push -j terraform
