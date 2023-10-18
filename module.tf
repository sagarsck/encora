module "custom_vpc" {
    source = "./terraform/vpc"
}
module "customsg" {
  source = "./terraform/security_group"
  custom_vpc_id = module.custom_vpc.custom_vpc_id
  }
module "launch_template" {
  source = "./terraform/launch_template"
  subnet_id = ["module.custom_vpc.public_1_id"]
  sg = ["module.customsg.custom_sg_name"]
  key_name = "nag" 
}

module "autoscaling"{
    source = "./terraform/autoscaling"
    launch_template_id = module.launch_template.launch_template_id
    subnet_ids = ["module.custom_vpc.public_1_id","module.custom_vpc.public_2_id"]
}
