variable "aws_region" {
  description = "Colocar a descrição"
  type        = string
  nullable    = false

}

variable "aws_vpc_name" {
  description = "Colocar a descrição"
  type        = string
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "Colocar a descrição"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "Colocar a descrição"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_private_subnet" {
  description = "Colocar a descrição"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_public_subnet" {
  description = "Colocar a descrição"
  type        = set(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "Colocar a descrição"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "Colocar a descrição"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instances_types" {
  description = "Colocar a descrição"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Colocar a descrição"
  type        = map(string)
  nullable    = false
}
