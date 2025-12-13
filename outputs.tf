output "endpoint" {
  value = aws_rds_cluster.this.endpoint
}

output "reader_endpoint" {
  value = aws_rds_cluster.this.reader_endpoint
}

output "cluster_id" {
  value = aws_rds_cluster.this.id
}

output "master_user_secret_arn" {
  value = aws_rds_cluster.this.master_user_secret[0].secret_arn
}

output "security_group_id" {
  value = aws_security_group.this.id
}
