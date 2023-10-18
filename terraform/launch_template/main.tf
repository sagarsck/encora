resource "aws_launch_template" "template-1" {
  name_prefix = var.template_name
  image_id = var.ami_id
  instance_type = var.instance_type
  security_group_names = ["var.sg"]
  key_name = var.key_name
  block_device_mappings {
    device_name = "/dev/sda1"
    
    ebs {
      volume_size = 8    
      volume_type = "gp2" 
      delete_on_termination = true 
      encrypted = true  
    }
  }
  network_interfaces {
    subnet_id = "var.subnet_id"
  }
  tags = {
    Name = var.template_name
  }

}