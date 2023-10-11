output "public-ip" {
  value = aws_instance.ec2-demo.public_ip

}

output "aws_vpc" {
  value = aws_vpc.splunk-vpc.id
}

output "aws_security_group" {
  value = aws_security_group.splunk-sew.id

}