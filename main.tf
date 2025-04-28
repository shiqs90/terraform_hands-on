# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create an EC2 instance
resource "aws_instance" "ec2_instance" {
  ami           = "ami-01b799c439fd5516a"
  instance_type = "t2.micro"
  
  tags = {
    Name = "terraform-ec2-instance"
  }
}
