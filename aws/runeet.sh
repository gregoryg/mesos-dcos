#!/bin/bash

export AWS_DEFAULT_REGION=us-east-2
# export AWS_PROFILE=dynapse

terraform init

# # terraform plan --var-file cluster.tfvars -out=cluster.plan
terraform plan -out=plan.out
terraform apply plan.out


