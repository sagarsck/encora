output "custom_vpc_id" {
  value = module.custom_vpc.custom_vpc_id
}
output "public_1_id" {
  value = module.custom_vpc.public_subnet_1_id
}
output "public_2_id" {
  value = module.custom_vpc.public_subnet_2_id
}

output "custom_sg_name" {
    description = "security group name"
    value = module.customsg.sg_name
}
output "custom_sg_id" {
    description = "security group ID"
    value = module.customsg.sg_id
}

output "launch_template_id" {
    description = "launch template id"
  value = module.launch_template.launch_template_id
}