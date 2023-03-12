# Variables

# Region
variable "region" {
  default = "us-east-1"
}

# AWS Credentials
variable "access_key" {
  default = "XXXXXXXXX"
}

variable "secret_key" {
  default = "XXXXXXXXXXXXXXXX"
}

# VPC Values
variable "vpc_name" {
  default = "dev-vpc"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

# Subnet 1 Values
variable "private_subnet_1_name" {
  default = "private-us-east-1a"
}

variable "private_subnet_1_availability_zone" {
  default = "us-east-1a"
}

variable "private_subnet_1_cidr" {
  default = "10.0.0.0/19"
}

# Subnet 2 Values
variable "private_subnet_2_name" {
  default = "private-us-east-1b"
}

variable "private_subnet_2_availability_zone" {
  default = "us-east-1b"
}

variable "private_subnet_2_cidr" {
  default = "10.0.32.0/19"
}

# Subnet 3 Values
variable "private_subnet_3_name" {
  default = "private-us-east-1c"
}

variable "private_subnet_3_availability_zone" {
  default = "us-east-1c"
}

variable "private_subnet_3_cidr" {
  default = "10.0.64.0/19"
}

# Subnet 4 Values
variable "public_subnet_4_name" {
  default = "public-us-east-1b"
}

variable "public_subnet_4_availability_zone" {
  default = "us-east-1b"
}

variable "public_subnet_4_cidr" {
  default = "10.0.96.0/19"
}

# Internet Gateway Values
variable "internet_gateway_name" {
  default = "dev-igw"
}

# Network Address Translation Gateway Values
variable "elastic_ip_name" {
  default = "dev-eip"
}

variable "nat_gateway_name" {
  default = "dev-nat"
}

# Private Route Table Values
variable "private_route_table_name" {
  default = "private-route"
}

variable "private_route_table_cidr" {
  default = "0.0.0.0/0"
}

# Public Route Table Values
variable "public_route_table_name" {
  default = "public-route"
}

variable "public_route_table_cidr" {
  default = "0.0.0.0/0"
}

# EKS Cluster Values
variable "eks_cluster_name" {
  default = "dev-eks-cluster"
}

variable "eks_cluster_version" {
  default = "1.24"
}

variable "eks_cluster_iam_role" {
  default = "dev-eks-cluster-iam-role"
}

# EKS Nodes Values
variable "eks_nodes_name" {
  default = "dev-eks-nodes"
}

variable "eks_nodes_iam_role" {
  default = "dev-eks-nodes-iam-role"
}

variable "eks_nodes_capacity_type" {
  default = "ON_DEMAND"
}

variable "eks_nodes_instance_types" {
  default = "t3.medium"
}
