### Step 5: Modifying Terraform and observing cost changes

Let's modify the Terraform configuration and observe how the cost changes:

1. Navigate to the `terraform` directory: `cd terraform`

2. Open the `main.tf` file `nano main.tf`.

3. Change the terraform file to this, which is a much larger EC2 instance on AWS:

  ```
  provider "aws" {
    region = "us-west-2"
  }

  resource "aws_instance" "big_server" {
    ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
    instance_type = "m5.large"
  }
  ```

4. Save the file in `nano`
  - After pasting the content, press Ctrl + O to write the changes.
  - Press Enter to confirm the file name.
  - Then, press Ctrl + X to exit `nano`

5. Navigate back to the main directory `cd ..`

6. Re-run the infracost cost estimate command

  - Run: `infracost breakdown --path terraform`
