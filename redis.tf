resource "aws_elasticache_subnet_group" "main" {
  name       = "main"
  subnet_ids = aws_subnet.private[*].id
}

resource "aws_elasticache_cluster" "main" {
  cluster_id                = "my-redis"
  engine                    = "redis"
  node_type                 = "cache.t3.micro"
  num_cache_nodes           = 1
  parameter_group_name      = "default.redis7"
  subnet_group_name         = aws_elasticache_subnet_group.main.id
  port                      = 6379
  final_snapshot_identifier = "true"
}
