data "oci_objectstorage_preauthrequests" "objectstorage_preauthrequests_lookup" {
  for_each = var.objectstorage_preauthrequests_lookup

  bucket             = each.value.bucket
  namespace          = each.value.namespace
  object_name_prefix = each.value.object_name_prefix

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

