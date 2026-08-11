data "terraform_remote_state" "aws_vpc" {
  backend = "s3"
  config = {
    bucket = "150100906110--terraform-backend"
    key    = "env:/${terraform.workspace}/container-arch/aws-vpc/terraform.tfstate"
    region = "us-east-2"
  }
}

data "terraform_remote_state" "aws_ecs_cluster_central" {
  count = local.workspace.enable_gax && !local.workspace.is_central ? 1 : 0

  backend = "s3"
  config = {
    bucket = "150100906110--terraform-backend"
    key    = "env:/${local.central_workspace}/container-arch/aws-ecs-cluster/terraform.tfstate"
    region = "us-east-2"
  }
}
