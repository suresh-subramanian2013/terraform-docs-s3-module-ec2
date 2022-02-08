module "website_s3_bucket" {
  source = "./modules/aws-s3-static-website-bucket"

  bucket_name = "sureshmodules3bucket1>"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
  
resource "aws_instance" "myec2" {
  ami               = data.aws_ami.web_ami.id
  instance_type     = var.instance_type
  availability_zone = var.zone
  key_name          = var.keyname
  count             = var.instancecount
  tags = {
    Name = element(var.ec2name, count.index)
  }

  user_data = <<-EOF
                #!/bin/bash
                yum update -y
                yum install -y httpd
                systemctl start httpd.service
                systemctl enable httpd.service
                echo "Hi Friend , I am $(hostname -f) hosted by Terraform" > /var/www/html/index.html
                EOF
}
data "aws_ami" "web_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

variable "instance_type" {}
variable "ec2name" {}
variable "keyname" {}
variable "zone" {}
variable "instancecount" {}



