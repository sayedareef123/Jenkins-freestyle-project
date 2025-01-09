resource "aws_vpc" "wordpress_Areef"{
  cidr_block = var.cidr_block
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
        Name = var.vpc_name
}
}
resource "aws_subnet" "wordpress_subnet" {
  vpc_id            = aws_vpc.wordpress_Areef.id
  cidr_block        = var.cidr_block 
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true   

  tags = {
    Name = "wordpress-subnet"
  }
}

resource "aws_internet_gateway" "wordpress_igw" {
  vpc_id = aws_vpc.wordpress_Areef.id

  tags = {
    Name = "wordpress-igw"
  }
}

resource "aws_route_table" "wordpress_route_table" {
  vpc_id = aws_vpc.wordpress_Areef.id

  route {
    cidr_block = "0.0.0.0/0" # Default route for all outbound traffic
    gateway_id = aws_internet_gateway.wordpress_igw.id
  }

  tags = {
    Name = "wordpress-route-table"
  }
}
resource "aws_route_table_association" "wordpress_route_table_association" {
  subnet_id      = aws_subnet.wordpress_subnet.id
  route_table_id = aws_route_table.wordpress_route_table.id
}