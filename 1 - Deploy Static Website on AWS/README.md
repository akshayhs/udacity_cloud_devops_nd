# Project 1: Deploy Static Website on AWS

## Scope

Deploy an instructor-supplied static website using AWS services such as S3, CloudFront and IAM. Once deployed, it must be accessed via. a CloudFront distribution endpoint.

### Tasks

1. Create a public S3 bucket and upload the fields to the bucket.

2. Configure the bucket to enable web hosting using IAM policies.

3. Setup content delivery for the website using AWS CloudFront.

4. Access the website using the CloudFront-generated end-point.

## Permissions for the S3 bucket

```json
{
"Version":"2012-10-17",
"Statement":[
 {
   "Sid":"AddPerm",
   "Effect":"Allow",
   "Principal": "*",
   "Action":["s3:GetObject"],
   "Resource":["arn:aws:s3:::your-website/*"]
 }
]
}
```

**Note: _Once the above configuration is applied, Amazon will immediately warn you about setting the bucket access to be public_.**

However, this is required for the website to be visible using the endpoint.
