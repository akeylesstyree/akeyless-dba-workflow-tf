# variable "aws_access_key_id" {
#   type        = string
#   description = "the aws access key id"
# }

# variable "aws_access_secret_key" {
#   type        = string
#   description = "the aws access secret key"
# }


# variable "access_id" {
#   type        = string
#   description = "value of the Akeyless API access id (This Access ID MUST be configured in the allowedAccessIDs of the Gateway or BE the adminAccessId for the Gateway)"
# }

# variable "access_key" {
#   type        = string
#   description = "value of the Akeyless API access key"
#   sensitive   = true
# }

# variable "api_gateway_address" {
#   type        = string
#   description = <<-EOF
#     value of the Akeyless Gateway 8081 port address 
#     Examples:
#     - http://localhost:8081 if using port forwarding
#     - http://your-gateway-ip-address:8081 if using a port
#     - https://your-gateway-api-address.com that maps to the 8081 port
#     EOF
# }
variable "project_id" {
  type    = string
  default = "customer-success-391112"
}

# variable "AKEYLESS_ACCESS_ID" {
#     type = string
#     description = "Access ID for the JWT Auth Method for Terraform cloud. Provided by Terraform Cloud through a terraform variable added to the workspace."
# }

# variable "AKEYLESS_AUTH_JWT" {
#   type        = string
#   description = "Terraform Cloud Workload Identity JWT for authentication into Akeyless. Provided by Terraform Cloud through an agent pool and hooks."
# }
