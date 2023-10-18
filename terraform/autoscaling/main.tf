resource "aws_autoscaling_group" "autoscaling" {
  name = var.autoscaling_name
  min_size = 1
  max_size = 2
  desired_capacity = 2

  launch_template {
    id = var.launch_template_id
    version = "$Latest"
  }

  vpc_zone_identifier = ["var.subnet_ids"]
}