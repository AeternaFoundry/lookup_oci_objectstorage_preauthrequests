output "objectstorage_preauthrequests_lookup_id" {
  description = "Map of id values across all objectstorage_preauthrequests_lookup, keyed the same as var.objectstorage_preauthrequests_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_objectstorage_preauthrequests.objectstorage_preauthrequests_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "objectstorage_preauthrequests_lookup_bucket" {
  description = "Map of bucket values across all objectstorage_preauthrequests_lookup, keyed the same as var.objectstorage_preauthrequests_lookup except keys with no bucket are omitted"
  value       = { for k, v in data.oci_objectstorage_preauthrequests.objectstorage_preauthrequests_lookup : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "objectstorage_preauthrequests_lookup_filter" {
  description = "Map of filter values across all objectstorage_preauthrequests_lookup, keyed the same as var.objectstorage_preauthrequests_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_objectstorage_preauthrequests.objectstorage_preauthrequests_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "objectstorage_preauthrequests_lookup_namespace" {
  description = "Map of namespace values across all objectstorage_preauthrequests_lookup, keyed the same as var.objectstorage_preauthrequests_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.oci_objectstorage_preauthrequests.objectstorage_preauthrequests_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "objectstorage_preauthrequests_lookup_object_name_prefix" {
  description = "Map of object_name_prefix values across all objectstorage_preauthrequests_lookup, keyed the same as var.objectstorage_preauthrequests_lookup except keys with no object_name_prefix are omitted"
  value       = { for k, v in data.oci_objectstorage_preauthrequests.objectstorage_preauthrequests_lookup : k => v.object_name_prefix if v.object_name_prefix != null && length(v.object_name_prefix) > 0 }
}
output "objectstorage_preauthrequests_lookup_preauthenticated_requests" {
  description = "Map of preauthenticated_requests values across all objectstorage_preauthrequests_lookup, keyed the same as var.objectstorage_preauthrequests_lookup except keys with no preauthenticated_requests are omitted"
  value       = { for k, v in data.oci_objectstorage_preauthrequests.objectstorage_preauthrequests_lookup : k => v.preauthenticated_requests if v.preauthenticated_requests != null && length(v.preauthenticated_requests) > 0 }
}

