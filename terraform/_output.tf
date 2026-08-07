output "ecs_cluster_name" {
  value = module.ecs_cluster.ecs_cluster_name
}

output "lb_arn" {
  value = module.ecs_cluster.lb_arn
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

output "cloudmap" {
  value = module.ecs_cluster.cloudmap
}

output "cloudmap_name" {
  value = module.ecs_cluster.cloudmap_name
}

output "cloudmap_arn" {
  value = module.ecs_cluster.cloudmap_arn
}
