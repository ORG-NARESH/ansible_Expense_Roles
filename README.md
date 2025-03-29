# ansible_Expense_Roles
this is expense project with roles

#running ansible play book with multiple envronments and different components

ansible-playbook -i inv-dev -e ansible_username=ec2-user -e ansible_password=DevOps321 -e env=dev expense.yml
