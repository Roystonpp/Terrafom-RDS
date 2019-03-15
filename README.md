# Terraform-RDS
AWS-RDS-Aurora creation with terraform

# prerequisites

 - Terraform (latest version)
 - AWS Cli
 - AWS Account

The aurora database is not part of the free tier usage aws offers.

Once the repo is cloned enter the command below to initialize the directory
```
terraform init
```

When the directory is initialized make sure you have entered your access and secret keys into the variables.tf file

After this is done run the command
```
terraform plan
```
Then
```
terraform apply
```

Check the aws rds database tab to see the newly created Aurora-MySql cluster.
