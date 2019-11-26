resource "aws_instance" "jumpbox" {
  ami                         = var.amis[var.aws_region]
  availability_zone           = "eu-west-2a"
  instance_type               = "t2.small"
  key_name                    = var.aws_key_name
  vpc_security_group_ids      = [aws_security_group.jumpbox.id]
  subnet_id                   = aws_subnet.eu-west-2a-public.id
  associate_public_ip_address = true
  source_dest_check           = false

  tags = {
    Name = "JumpBox"
  }
}

resource "aws_instance" "awx" {
  ami                         = var.amis[var.aws_region]
  availability_zone           = "eu-west-2a"
  instance_type               = "t2.small"
  key_name                    = var.aws_key_name
  vpc_security_group_ids      = [aws_security_group.awx.id]
  subnet_id                   = aws_subnet.eu-west-2a-public.id
  associate_public_ip_address = true
  source_dest_check           = false

  tags = {
    Name = "AWX"
  }
}


resource "aws_instance" "web-1" {
  ami                         = var.amis[var.aws_region]
  availability_zone           = "eu-west-2a"
  instance_type               = "t2.small"
  key_name                    = var.aws_key_name
  vpc_security_group_ids      = [aws_security_group.web.id]
  subnet_id                   = aws_subnet.eu-west-2a-public.id
  associate_public_ip_address = true
  source_dest_check           = false

  tags = {
    Name = "Web Server 1"
  }
}

resource "aws_instance" "db-1" {
  ami                    = var.amis[var.aws_region]
  availability_zone      = "eu-west-2a"
  instance_type          = "t2.small"
  key_name               = var.aws_key_name
  vpc_security_group_ids = [aws_security_group.db.id]
  subnet_id              = aws_subnet.eu-west-2a-private.id
  source_dest_check      = false

  tags = {
    Name = "DB Server 1"
  }
}

