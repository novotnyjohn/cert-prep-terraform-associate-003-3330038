 resource "aws_instance" "ec2-instance1" {
   ami = "ami-085ad6ae776d8f09c"
   instance_type = "t2.micro"

   tags = {                                
     Name = "demo-server1"
}
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.west
  ami           = "ami-03d49b144f3ee2dc4"  # AMI for us-west-1
  instance_type = "t2.micro"

  tags = {                                
    Name = "demo-server2"
}
}