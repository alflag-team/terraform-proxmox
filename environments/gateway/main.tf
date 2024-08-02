module "gateway1001" {
  source = "../../modules/lxc"

  hostname       = "gateway1001"
  target_node    = "kitsune"
  memory         = 1024
  swap           = 8192
  network_ip     = "10.210.3.1/24"
  rootfs_size    = "16G"
  rootfs_storage = "hdd-01"
  nesting        = true
}
