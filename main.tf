resource "vault_mount" "component" {
#vault_mount means engine
path        = "cart-dev"
type        = "kv-v2"
  options = {
    version = "2"
    type    = "kv-v2"
  }
  description = "Cart-dev"
}