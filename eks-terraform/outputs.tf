output "cluster_name" {
  value = aws_eks_cluster.devops.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.devops.endpoint
}

output "kubeconfig" {
  value = <<EOT
aws eks update-kubeconfig --region=${var.aws_region} --name=devops-cluster
EOT
}
