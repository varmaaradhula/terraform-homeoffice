data "vault_kv_secret_v2" "pubkey" {
  mount = "kv" // change it according to your mount
  name  = "publickey" // change it according to your secret
}