### Step 1: Setup Terraform project

In this step, we will initialize and prepare a simple Terraform project that provisions an AWS S3 bucket.

1. Navigate to the `terraform` directory: `cd terraform`

2. Paste the following terraform infrastructure code:

```terraform
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "small_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
}
```

3. Run `terraform init` to initialize the Terraform configuration.
4. Next, run `terraform plan` to generate a plan for your infrastructure.

You should see a Terraform plan that provisions a simple S3 bucket.
