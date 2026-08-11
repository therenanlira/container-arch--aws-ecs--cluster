module "global_accelerator" {
  count  = local.workspace.enable_gax && local.workspace.is_central ? 1 : 0
  source = "git::https://github.com/therenanlira/container-arch--aws-modules.git//global_accelerator?ref=v1"

  providers = {
    aws = aws.gax
  }

  service_name = local.workspace.project_name
  environment  = local.workspace.environment
}

module "global_accelerator_endpoint" {
  count  = local.workspace.enable_gax ? 1 : 0
  source = "git::https://github.com/therenanlira/container-arch--aws-modules.git//global_accelerator_endpoint?ref=v1"

  providers = {
    aws = aws.gax
  }

  listener_arn = (local.workspace.is_central ?
    one(module.global_accelerator[*].listener_arn) :
    one(data.terraform_remote_state.aws_ecs_cluster_central[*].outputs.gax_listener_arn)
  )

  endpoint_group_region = local.workspace.aws_region

  endpoints = [
    {
      endpoint_id = module.ecs_cluster.lb_arn
    }
  ]

  health_check_path = "/"
}
