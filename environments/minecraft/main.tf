module "minecraftproxy1001" {
  source = "../../modules/lxc"

  hostname       = "minecraftproxy1001"
  target_node    = "kitsune"
  memory         = 2048
  swap           = 8192
  network_ip     = "10.210.30.101/24"
  rootfs_size    = "8G"
  rootfs_storage = "Synology-01-LUN-01"
  nesting        = true
}
