resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "${var.name}-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 3
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period              = 60
  statistic           = "Average"
  threshold           = 80
  dimensions = {
    DBClusterIdentifier = aws_rds_cluster.this.cluster_identifier
  }
  tags = var.tags
}

resource "aws_cloudwatch_metric_alarm" "acu_near_max" {
  alarm_name          = "${var.name}-acu-near-max"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 3
  metric_name         = "ServerlessDatabaseCapacity"
  namespace           = "AWS/RDS"
  period              = 60
  statistic           = "Average"
  threshold           = var.max_acu * 0.85
  dimensions = {
    DBClusterIdentifier = aws_rds_cluster.this.cluster_identifier
  }
  tags = var.tags
}
