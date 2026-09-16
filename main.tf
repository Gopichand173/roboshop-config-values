resource "vault_mount" "component" {
#vault_mount means engine
path        = "roboshop-dev"
type        = "kv-v2"
  options = {
    version = "2"
    type    = "kv-v2"
  }
  description = "roboshop-dev"
}