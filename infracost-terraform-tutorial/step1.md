### Step 1: Setup Terraform project

In this step, we will initialize and prepare a simple Terraform project that provisions an AWS EC2 Server.

1. Navigate to the `terraform` directory: `cd terraform`

2. Create the file `main.tf` and paste the following terraform infrastructure code into it:

```terraform
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "small_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
}
```

This will provision a small server on AWS.

3. Run `terraform init` to initialize the Terraform configuration.
