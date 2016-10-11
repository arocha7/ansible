#! /bin/sh 
terraform plan
terraform apply
terraform output > hosts
