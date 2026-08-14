workspaces = {
  dev-us-east-2 = {
    allowed_accounts = ["150100906110"]
    environment      = "dev"
    aws_region       = "us-east-2"
    central_region   = "us-east-2"
    is_central       = true
    enable_gax       = false

    project_name = "container-arch"

    capacity_provider_strategies = ["FARGATE", "FARGATE_SPOT"]

    ecs_instance_type = "t3.small"
    ecs_volume_size   = "50"
    ecs_volume_type   = "gp3"

    ecs_ami = {
      us-west-2 = "ami-091124c3965bce679"
      us-east-2 = "ami-04ea4e8270c27626c"
    }

    ecs_autoscaling = {
      ON_DEMAND = {
        minimum = "1"
        maximum = "3"
        desired = "1"
      }
      SPOT = {
        minimum = "1"
        maximum = "3"
        desired = "1"
      }
      FARGATE = {
        minimum = "1"
        maximum = "3"
        desired = "1"
      }
      FARGATE_SPOT = {
        minimum = "1"
        maximum = "3"
        desired = "1"
      }
    }

    load_balancer_internal = true
    load_balancer_type     = "application"
  }

  dev-us-west-2 = {
    allowed_accounts = ["150100906110"]
    environment      = "dev"
    aws_region       = "us-west-2"
    central_region   = "us-east-2"
    is_central       = false
    enable_gax       = false

    project_name = "container-arch"

    capacity_provider_strategies = ["FARGATE", "FARGATE_SPOT"]

    ecs_instance_type = "t3.small"
    ecs_volume_size   = "50"
    ecs_volume_type   = "gp3"

    ecs_ami = {
      us-west-2 = "ami-091124c3965bce679"
      us-east-2 = "ami-048f644e868baa0e8"
    }

    ecs_autoscaling = {
      ON_DEMAND = {
        minimum = "1"
        maximum = "3"
        desired = "1"
      }
      SPOT = {
        minimum = "1"
        maximum = "3"
        desired = "1"
      }
      FARGATE = {
        minimum = "1"
        maximum = "3"
        desired = "1"
      }
      FARGATE_SPOT = {
        minimum = "1"
        maximum = "3"
        desired = "1"
      }
    }

    load_balancer_internal = true
    load_balancer_type     = "application"
  }

}
