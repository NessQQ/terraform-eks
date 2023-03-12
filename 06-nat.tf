resource "aws_eip" "elastic_ip" {
  vpc = true

  tags = {
    Name = "${var.elastic_ip_name}"
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.elastic_ip.id
  subnet_id     = aws_subnet.public_subnet_4.id

  tags = {
    Name = "${var.nat_gateway_name}"
  }

  depends_on = [aws_internet_gateway.internet_gateway]
}
