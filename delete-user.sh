#!/bin/bash

cd ~/Desktop/DevOps/Scripts/Bash

# delete login profile
aws iam delete-login-profile --user-name devops1

# Detach policy
aws iam detach-user-policy --user-name devops1 --policy-arn arn:aws:iam::aws:policy/AdministratorAccess

# Delete key of the user <change --access-key>
aws iam delete-access-key --access-key AKIASOAGHVG6I5C4PEVY --user-name devops1

# delete user
aws iam delete-user --user-name devops1