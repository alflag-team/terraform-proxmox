module "dify1001" {
  source = "../../modules/lxc"

  hostname       = "dify"
  target_node    = "kitsune"
  memory         = 1024 * 4
  swap           = 1024 * 8
  network_ip     = "10.210.2.3/24"
  rootfs_size    = "30G"
  rootfs_storage = "Synology-01-LUN-01"
  nesting        = true
}

module "wiki1001" {
  source = "../../modules/lxc"

  hostname       = "wiki1001"
  target_node    = "kitsune"
  memory         = 1024 * 2
  swap           = 1024 * 8
  network_ip     = "10.210.11.11/24"
  rootfs_size    = "30G"
  rootfs_storage = "Synology-01-LUN-01"
}
