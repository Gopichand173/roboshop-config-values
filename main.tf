resource "vault_mount" "secret-mounts" {
#vault_mount means engine
for_each    = var.secret-mounts
path        = each.key
type        = "kv-v2"
  options = {
    version = "2"
    type    = "kv-v2"
  }
  description = each.value["description"]
}