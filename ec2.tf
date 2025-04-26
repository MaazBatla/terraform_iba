# ec2.tf

resource "aws_instance" "ubuntu_instance" {
  ami                    = "ami-084568db4383264d4" # Ubuntu 20.04 AMI ID
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0a1d914795c0fd422" # Hardcoded subnet ID for Ubuntu instance
  key_name               = "maaz-aws-server-key"
  security_groups        = [aws_security_group.ubuntu_sg.id] # Assign Ubuntu security group
  tags = {
    Name = "tf_created_ec2_ubuntu"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }
}

resource "aws_instance" "amazon_linux_2_instance" {
  ami                    = "ami-0b86aaed8ef90e45f" # Amazon Linux 2 AMI ID
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0de41697a8bf030a3" # Hardcoded subnet ID for Amazon Linux 2 instance
  key_name               = "maaz-aws-server-key"
  security_groups        = [aws_security_group.amazon_linux_sg.id] # Assign Amazon Linux 2 security group
  tags = {
    Name = "tf_created_ec2_amazon_linux_2"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }
}

resource "aws_instance" "amazon_linux_2023_instance" {
  ami                    = "ami-0e449927258d45bc4" # Amazon Linux 2023 AMI ID
  instance_type          = "t2.micro"
  subnet_id              = "subnet-04390ee5cbac457cd" # Hardcoded subnet ID for Amazon Linux 2023 instance
  key_name               = "maaz-aws-server-key"
  security_groups        = [aws_security_group.amazon_linux_sg.id] # Assign Amazon Linux 2023 security group
  tags = {
    Name = "tf_created_ec2_amazon_linux_2023"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }
}
