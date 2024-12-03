variable "vpc_cidr" {
  type        = string
  description = "Public Subnet CIDR values"
}

variable "cidr_public_subnet" {
  type        = list(string)
  description = "Public Subnet CIDR values"
}

variable "cidr_private_subnet" {
  type        = list(string)
  description = "Private Subnet CIDR values"
}

variable "eu_availability_zone" {
  type        = list(string)
  description = "Availability Zones"
}

variable "vpc_id" {
  type        = string
  description = "DevOps Project 1 VPC 1"
}


variable "ec2_sg_name" {
  type        = string
  description = "EC2_SG_Name"

}


variable "ec2_jenkins_sg_name" {
  type        = string
  description = "Jenkins_SG_Name"
}



variable "ami_id" {}
variable "instance_type" {}
variable "tag_name" {}
variable "public_key" {}
variable "subnet_id" {}
variable "sg_for_jenkins" {}
variable "enable_public_ip_address" {}
variable "user_data_install_jenkins" {}


variable "lb_target_group_name" {}
variable "lb_target_group_port" {}
variable "lb_target_group_protocol" {}

variable "ec2_instance_id" {
  description = "EC2 instance ID for the target group attachment"
  type        = string
}


#APPLICATION LOAD BALANCER
variable "lb_name" {}
variable "lb_type" {}
variable "is_external" { default = false }
variable "sg_enable_ssh_https" {}
variable "subnet_ids" {}
variable "lb_target_group_arn" {}
variable "lb_listner_port" {}
variable "lb_listner_protocol" {}
variable "lb_listner_default_action" {}
variable "lb_https_listner_port" {}
variable "lb_https_listner_protocol" {}
variable "dev_proj_1_acm_arn" {}
variable "lb_target_group_attachment_port" {}



variable "domain_name" {}
variable "aws_lb_dns_name" {}
variable "aws_lb_zone_id" {}




variable "hosted_zone_id" {}



data "aws_route53_zone" "dev_proj_1_jhooq_org" {
  name         = "jersonix.online"
  private_zone = false
}


# Fetch the Hosted Zone ID for the Load Balancer
data "aws_lb" "dev_proj_1_lb" {
  name = aws_lb.dev_proj_1_lb.name
}