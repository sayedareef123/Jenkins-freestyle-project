resource "aws_instance" "wordpress_Areef" {
    ami = var.instance_ami
    instance_type = var.instance_type
    key_name = var.instance_key
    subnet_id = aws_subnet.wordpress_subnet.id
    vpc_security_group_ids = [aws_security_group.wordpress_sg.id]


  
    tags = {
      Name = var.instance_name
      instance_name = var.instance_name   
}
}