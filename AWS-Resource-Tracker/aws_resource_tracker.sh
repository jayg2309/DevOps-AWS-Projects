#!/bin/bash

#################
# Author : Jay
# Date: 22 Jan 2024
#
# Version : v1
#
# This script will report the aws resource usage
#################

set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

# List s3 bucekts
echo "Print list of s3 buckets"
aws s3 ls

#List EC2 instances
echo "Print list of EC2 instances"
 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda
echo "Print list of lambda functions"
aws lambda list-functions

#list IAM Users
echo "Print list of IAM Users"
aws iam list-users
