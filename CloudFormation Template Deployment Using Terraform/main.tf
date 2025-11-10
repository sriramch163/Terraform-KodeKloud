resource "aws_cloudformation_stack" "devops_stack" {
  name          = "devops-stack"
  template_body = <<STACK
{
  "AWSTemplateFormatVersion": "2010-09-09",
  "Description": "CloudFormation stack that creates an S3 bucket with versioning enabled",
  "Resources": {
    "S3Bucket": {
      "Type": "AWS::S3::Bucket",
      "Properties": {
        "BucketName": "devops-bucket-27345",
        "VersioningConfiguration": {
          "Status": "Enabled"
        }
      }
    }
  }
}
STACK
}