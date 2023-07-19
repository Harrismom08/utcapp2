resource "aws_instance" "server" {
  ami                         = "ami-04823729c75214919"
  instance_type               = "t2.micro"
  key_name                    =  "terraform-key1"

  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Name = "Terraform-ec2-instance"
    Env  = "dev"
  }
}