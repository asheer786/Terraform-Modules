module "rds" {
  source               = "../input-modules/rds"
  vpc_ids              = module.vpc.vpc_id
  subnet_ids           = module.vpc.db_subnet_ids
  subnet_group_name    = "proddbsubnetgroup"
  environment          = "prod"
  source_cidr          = ["0.0.0.0/0"]
  instance_type        = "db.t3.medium"
  instance_name        = "auroraproddbinstance"
  username             = "admin"
  password             = "asheer786"

}