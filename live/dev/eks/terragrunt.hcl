include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../terraform/modules/eks"
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  vpc_id           = dependency.vpc.outputs.vpc_id
  private_subnets  = dependency.vpc.outputs.private_subnets
}