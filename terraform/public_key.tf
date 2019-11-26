resource "aws_key_pair" "ansible_key" {
    key_name = var.aws_key_name
    public_key = file("~/.ssh/id_rsa.pub")
}