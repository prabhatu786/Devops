# 1.For Linux (Debian/Ubuntu):
    • Use the package manager to install the AWS CLI. Open Terminal and run:
    
Command:\
sudo apt-get update\
sudo apt-get install awscli

# Step 2: Configure AWS CLI

1. Open a terminal or command prompt.
3. Run the following command to configure the AWS CLI:   
   Command: \
   aws configure

  3.Enter your AWS Access Key ID, Secret Access Key, default region, and 	output format when prompted. You can find your Access Key ID and \	Secret Access Key in the AWS Management Console under "Security 	Credentials" in the "IAM" service.
	
Example:\
AWS Access Key ID [None]: YOUR_ACCESS_KEY \
AWS Secret Access Key [None]: YOUR_SECRET_KEY \
Default region name [None]: your-	preferred-region \
Default 	output format [None]: json 

# Step 3: Test Connection to S3 Bucket
Now, you can test the connection to your S3 bucket. Use the aws s3 ls command to list the contents of a bucket:
Command:
aws s3 ls s3://your-bucket-name
Replace your-bucket-name with the name of your S3 bucket. If the configuration is correct and your credentials are valid, you should see a list of objects in your S3 bucket.
That's it! You've now installed the AWS CLI and connected to your S3 bucket.

Step 4. Creatig simple bash script to upload file in s3 bucket

# Note:
You can use the aws s3 cp command to copy files from your local machine to an S3 bucket. 



# BashScript code:
_______________________________________________________________________________
#!/bin/bash

#### Set your AWS S3 bucket name and path
S3_BUCKET_NAME="your-s3-bucket-name"
S3_PATH="path/in/s3/bucket"
#### Set your local directory path
LOCAL_DIRECTORY="/path/to/local/directory"
#### Use aws s3 cp to copy files to S3 bucket
aws s3 cp $LOCAL_DIRECTORY s3://$S3_BUCKET_NAME/$S3_PATH --recursive
echo "Files uploaded to S3 bucket: $S3_BUCKET_NAME/$S3_PATH"

_______________________________________________________________________________


Make sure to replace "your-s3-bucket-name", "path/in/s3/bucket", and "/path/to/local/directory" with your actual S3 bucket name, desired path in the S3 bucket, and your local directory path, respectively.\
Save this script as, for example, Push_S3bucket.sh. Make it executable using chmod +x Push_S3bucket.sh. Then, you can run it using ./Push_S3bucket.sh in your terminal.
