variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto"
  type        = string
  default     = "devops"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Nome do par de chaves da EC2"
  type        = string
}