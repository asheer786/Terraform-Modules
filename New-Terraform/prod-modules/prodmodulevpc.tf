module "vpc" {
  source               = "../input-modules/vpc"
  region               = "us-west-2"
  vpc-cidr             = "10.20.0.0/16"
  public_subnet_cidrs  = ["10.20.1.0/24", "10.20.2.0/24", "10.20.3.0/24"]
  private_subnet_cidrs = ["10.20.4.0/24", "10.20.5.0/24", "10.20.6.0/24"]
  db_subnet_cidrs      = ["10.20.7.0/24", "10.20.8.0/24", "10.20.9.0/24"]
  azs                  = ["us-west-2a", "us-west-2b", "us-west-2c"]
  Project_Name         = "prodprojectvpc"
}