variable "redis_cache_password" {
  type ="string"
}

resource "alicloud_kvstore_instance" "redisCache" {
  instance_class = "redis.master.small.default"
  instance_name  = "redis"
  password       = "${var.redis_cache_password}"
  vswitch_id     = "${alicloud_vswitch.vsw.id}"
  security_ips = ["0.0.0.0/0"]
}
