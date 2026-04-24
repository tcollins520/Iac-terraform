# to get information that is outside of terraform, we use data sources
# reference data since you will be getting the resource from AWS which is outside of Terraform platform
# terraform will fetch this resource for us from aws
# give the resource type (aws_ami)
# give the resource name (amiID)
# give the resource block ({})
# within the block, give the resources arguments
data "aws_ami" "amiID" {
  most_recent = true
  # add filter so the data will use the filter to find the data that you need
  filter {
    # give the name of the filter you would like to use
    name = "name"
    # give the value for your instance name
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

# print the output of the data source block which will be the value of the AMi id that we filtered for.
output "instance_id" {
  description = "AMI ID of Ubuntu instance"
  value       = data.aws_ami.amiID.id
}
