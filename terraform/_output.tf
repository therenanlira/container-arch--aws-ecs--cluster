output "ecs_cluster_name" {
  value = module.ecs_cluster.ecs_cluster_name
}

output "lb_arn" {
  value = module.ecs_cluster.lb_arn
}

output "lb_arn_suffix" {
  value = module.ecs_cluster.lb_arn_suffix
}

output "lb_dns_name" {
  value = module.ecs_cluster.lb_dns_name
}

output "lb_zone_id" {
  value = module.ecs_cluster.lb_zone_id
}

output "lb_listener_arn" {
  value = module.ecs_cluster.lb_listener_arn
}

output "api_gateway_id" {
  value = module.ecs_cluster.api_gateway_id
}

output "cloudmap_id" {
  value = module.ecs_cluster.cloudmap_id
}

output "cloudmap_name" {
  value = module.ecs_cluster.cloudmap_name
}

output "cloudmap_arn" {
  value = module.ecs_cluster.cloudmap_arn
}

output "service_connect_id" {
  value = module.ecs_cluster.service_connect_id
}

output "service_connect_name" {
  value = module.ecs_cluster.service_connect_name
}

output "service_connect_arn" {
  value = module.ecs_cluster.service_connect_arn
}
