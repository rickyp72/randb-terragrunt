Dev environment 

create a file in environment root call
account_vars.yaml
```
account_name: <accountname>
account_number: <54354543534543>
tfstate_bucket: <accountname>-tfstate 
```


from dev root folder run to see all resources in dev 
`aws-profile -p <target env> terragrunt run-all plan`


order of apply

- vpc
- subnet
- s3 buckets
- lambda_iam
- lambda


---
make init, make plan, and make apply will run terragrunt run-all init, terragrunt run-all plan, and terragrunt run-all apply, respectively, in the root directory, thereby processing all components.
make init-<component>, make plan-<component>, and make apply-<component> will run terragrunt init, terragrunt plan, and terragrunt apply, respectively, in the specified component's directory.
For instance, to run terragrunt plan for just the subnet component, you'd execute make plan-subnet. And to run terragrunt apply for all components, you'd simply execute make apply.

This Makefile provides a way to manage individual and collective operations on your Terraform components, making it flexible to handle various scenarios in your infrastructure management tasks.


---
## makefile use
