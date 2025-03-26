#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
INSTANCES=("mysql" "backend" "frontend")
#INSTANCES=("mongodb" "catalogue" "web")
AMI="ami-0fcc78c828f981df2"
SECURITY_GROUP="sg-02efeff1df99019a6"
HOSTED_ZONE="Z0135212GWRZC8NQ42PM"
DOMAIN_NAME="eternallearnings.shop"
T3_INSTANCE_TYPE="t3.micro"
for INSTANCE  in "${INSTANCES[@]}"
do
echo -e "Creating $INSTANCE"

aws ec2 run-instances --image-id $AMI --instance-type $INSTANCE_TYPE  --security-group-ids $SECURITY_GROUP --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value="$INSTANCE"}]"

#IP_ADDRESS=$(aws ec2 run-instances --image-id $AMI --instance-type $INSTANCE_TYPE  --security-group-ids $SECURITY_GROUP --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value="$INSTANCE"}]" --query 'Instances[0].PrivateIpAddress' --output text)

echo -e "$INSTANCE IP is $IP_ADDRESS"
done