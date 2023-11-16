#!/bin/bash

# Set your AWS S3 bucket name and path
S3_BUCKET_NAME="prabhat-bucket1"
#S3_PATH="path/in/s3/bucket"
#S3_path="s3://prabhat-bucket1/"

# Set your local directory path
LOCAL_DIRECTORY="/home/slashrtc/Desktop/test"

# Use aws s3 cp to copy files to S3 bucket
aws s3 cp $LOCAL_DIRECTORY s3://$S3_BUCKET_NAME --recursive

echo "Files uploaded to S3 bucket: $S3_BUCKET_NAME/$S3_PATH"
