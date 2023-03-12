resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "${var.private_subnet_1_cidr}"
  availability_zone = "${var.private_subnet_1_availability_zone}"

  tags = {
    "Name"                                      = "${var.private_subnet_1_name}"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "${var.private_subnet_2_cidr}"
  availability_zone = "${var.private_subnet_2_availability_zone}"

  tags = {
    "Name"                                      = "${var.private_subnet_2_name}"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "${var.private_subnet_3_cidr}"
  availability_zone = "${var.private_subnet_3_availability_zone}"

  tags = {
    "Name"                                      = "${var.private_subnet_3_name}"
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }
}

resource "aws_subnet" "public_subnet_4" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "${var.public_subnet_4_cidr}"
  availability_zone = "${var.public_subnet_4_availability_zone}"

  map_public_ip_on_launch = true

  tags = {
    "Name"                                      = "${var.public_subnet_4_name}"
    "kubernetes.io/role/elb"                    = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
  }
}
