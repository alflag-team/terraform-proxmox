module "dify" {
  source = "../../modules/lxc"

  hostname    = "dify"
  target_node = "kitsune"
  memory      = 1024
  swap        = 1024 * 8
  network_ip  = "10.210.11.3/24"
  rootfs_size    = "10G"
  rootfs_storage = "Synology-01-LUN-01"
  nesting     = true
}
