resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0623300d1b7caee89"   
  instance_type = "t3.micro"

user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "EC2-Created-By-Jenkins"
  }
}
