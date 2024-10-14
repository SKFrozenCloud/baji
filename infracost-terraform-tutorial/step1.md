### Step 1: Setup Terraform project

In this step, we will initialize and prepare a simple Terraform project that provisions an AWS EC2 Server.

1. Navigate to the `terraform` directory: `cd terraform`

2. Create the file `main.tf` and add the terraform code:

    1. Use the `touch` command to create the file `touch main.tf`

    2. Open the file using the `nano` editor `nano main.tf`

    3. Paste the following Terraform code into the `main.tf` file:

  ```terraform
  provider "aws" {
    region = "us-west-2"
  }

  resource "aws_instance" "small_server" {
    ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
  }
  ```

    4. Save the file in `nano`

        - After pasting the content, press Ctrl + O to write the changes.
        - Press Enter to confirm the file name.
        - Then, press Ctrl + X to exit `nano`


3. Run `terraform init` to initialize the Terraform configuration.