dns_settings = {
  "mvpconf.com" = {
    dns_records = [
      {
        name   = "protheus"
        type   = "A"
        ttl    = 3600
        record = ["177.52.183.104"]
      }
    ]
  }
  "mvp2.com.br" = {
    dns_records = [
      {
        name   = "@"
        type   = "A"
        ttl    = 3600
        record = ["192.168.15.2"]
      }
    ]
  }
}
