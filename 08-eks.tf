resource "aws_iam_role" "eks_cluster_iam_role" {
  name = "${var.eks_cluster_iam_role}"

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_role_policy_attachment" "amazon_eks_cluster_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks_cluster_iam_role.name
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = "${var.eks_cluster_name}"
  version  = "${var.eks_cluster_version}"
  role_arn = aws_iam_role.eks_cluster_iam_role.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.private_subnet_1.id,
      aws_subnet.private_subnet_2.id,
      aws_subnet.private_subnet_3.id,
      aws_subnet.public_subnet_4.id
    ]
  }

  depends_on = [aws_iam_role_policy_attachment.amazon_eks_cluster_policy]
}
