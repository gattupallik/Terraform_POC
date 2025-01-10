# Terraform_POC
Terraform-Project_realtime
Terraform AWS Infrastructure Setup This project contains Terraform code to set up a comprehensive AWS infrastructure. The configuration includes a Virtual Private Cloud (VPC) with public and private subnets, necessary networking components, and essential AWS services such as S3, RDS, DynamoDB, and ElastiCache.

Prerequisites Terraform v1.9.8 or later

AWS account and credentials

AWS CLI configured with appropriate permissions

Project Structure variables.tf - Defines the variables used across the Terraform configuration.

vpc.tf - Configures the VPC, subnets, Internet Gateway, NAT Gateway, and route tables.

s3.tf - Creates an S3 bucket with versioning enabled for log storage.

rds.tf - Deploys an RDS PostgreSQL instance within a private subnet.

dynamodb.tf - Creates a DynamoDB table with a primary key id.

redis.tf - Sets up an ElastiCache Redis instance within a private subnet.

outputs.tf - Outputs the IDs and endpoints of the created resources.

terraform.tfvars - Contains the variable values used by Terraform.

Setup Initialize Terraform:

terraform init Plan the Infrastructure:

terraform plan Apply the Configuration:

terraform apply Variables The following variables need to be defined in terraform.tfvars:

hcl region = "us-west-2" vpc_cidr = "10.0.0.0/16" public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"] private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"] db_username = "your-username" db_password = "YourSecurePassword123!" s3_bucket_name = "unique-log-bucket-name-kk" Outputs After applying the Terraform configuration, the following outputs will be available:

VPC ID

Public Subnet IDs

Private Subnet IDs

S3 Bucket Name

RDS Endpoint

DynamoDB Table Name

Redis Endpoint

# terraform.tfvars - Contains the variable values used by Terraform. Note: In real-world projects, the terraform.tfvars file should not be uploaded to version control systems (e.g., GitHub) as it may contain sensitive information such as credentials and passwords. Instead, use environment variables or secret management tools to handle sensitive data.

.tfvars - 

region = "us-west-2"
vpc_cidr = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
db_username = "******"
db_password = "*******"
s3_bucket_name = "unique-log-bucket-name-kk"

