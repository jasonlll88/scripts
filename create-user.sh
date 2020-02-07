#!/bin/bash

# move to the folder where some necesary files are saved
cd ~/Desktop/DevOps/Scripts/Bash

# Create user
aws iam create-user --user-name devops1

# Create login profile
aws iam create-login-profile --cli-input-json file://create-login-profile.json

# Create access key for the user
aws iam create-access-key --user-name devops1

# Add the user to an Admin group
aws iam attach-user-policy --policy-arn arn:aws:iam::aws:policy/AdministratorAccess --user-name devops1

