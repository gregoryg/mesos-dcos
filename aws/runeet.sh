#!/bin/bash

echo "Key must be active in SSH agent - trying to set now"
ssh-add ~/.ssh/dynapse-ohio

export AWS_DEFAULT_REGION=us-east-2
export AWS_PROFILE=dynapse

terraform init

# terraform plan --var-file cluster.tfvars -out=cluster.plan
terraform plan -out=plan.out
terraform apply plan.out


