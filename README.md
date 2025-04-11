# ansible_Expense_Roles
this is expense project with roles

#running ansible play book with multiple envronments and different components

ansible-playbook -i inv-dev -e ansible_username=ec2-user -e ansible_password=DevOps321 -e env=dev expense.yml

ansible-playbook -i inv-dev -e ansible_username=ec2-user -e ansible_password=DevOps321 -e env=dev -e component=frontend expense.yml


 1) Add the disk ( On UI ) 
    2) Expand the disk : sudo growpart /dev/nvme0n1 4 ( 4 is the partition number ) ; expands the partition
    3) sudo lvextend -l +50%FREE /dev/mapper/RootVG-homeVol ; ( Extends LVM )
    4) sudo lvextend -l +1000%FREE /dev/mapper/RootVG-varVol ; ( Extends LVM )
    5) sudo xfs_growfs  /var ; sudo xfs_growfs  /hom                         ( Expand the fileSystem ) 
    6) df -h