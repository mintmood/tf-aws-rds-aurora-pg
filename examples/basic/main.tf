module "aurora" {
  source              = "../.."
  name                = "orders-db"
  vpc_id              = "vpc-0123456789abcdef0"
  subnet_ids          = ["subnet-aaa", "subnet-bbb"]
  allowed_cidr_blocks = ["10.0.0.0/16"]
}
