#!/bin/bash

for component in "mysql" "backend" "frontend";
do
ansible-playbook -i inv  -e ansible_username=ec2-user -e ansible_password=DevOps321 -e component=$component expense.yaml
done

