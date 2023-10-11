## Ec2 instance 

resource "aws_instance" "ec2-demo" {
  ami                    = "ami-0bb4c991fa89d4b9b"
  vpc_security_group_ids = [aws_security_group.splunk-sew.id]
  instance_type          = "t2.small"
  key_name               = "ec2-demo"
  subnet_id              = aws_subnet.public_subnet1.id
  user_data              = file("splunk.sh")
  tags = {
    Name = "Terraform instance"
    env  = "Dev"
  }

}