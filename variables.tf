variable "objectstorage_preauthrequests_lookup" {
  description = <<EOT
Map of objectstorage_preauthrequests_lookup, attributes below
Required:
    - bucket
    - namespace
Optional:
    - object_name_prefix
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    bucket             = string
    namespace          = string
    object_name_prefix = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

