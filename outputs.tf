output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.logs.bucket
}

output "rds_endpoint" {
  value = aws_db_instance.main.endpoint
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.main.name
}

output "redis_endpoint" {
  value = aws_elasticache_cluster.main.cache_nodes[0].address
}
