variable "network_security_intercept_deployments" {
  description = <<EOT
Map of network_security_intercept_deployments, attributes below
Required:
    - forwarding_rule
    - intercept_deployment_group
    - intercept_deployment_id
    - location
Optional:
    - deletion_policy
    - description
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    forwarding_rule            = string
    intercept_deployment_group = string
    intercept_deployment_id    = string
    location                   = string
    deletion_policy            = optional(string)
    description                = optional(string)
    labels                     = optional(map(string))
    project                    = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

