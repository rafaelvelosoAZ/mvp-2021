dns_settings = {
  "mvpconf.com" = {
    dns_records = [
      {
        name   = "protheus"
        type   = "A"
        ttl    = 3600
        record = ["177.52.183.104"]
      },
      {
        name = "@"
        type = "A"
        ttl = 300
        record = ["182.123.2.31"]
      }
    ]
  }
  "cloudsquad.com" = {
    dns_records = [
      {
        name   = "protheus"
        type   = "A"
        ttl    = 3600
        record = ["177.52.183.104"]
      },
      {
        name = "@"
        type = "A"
        ttl = 300
        record = ["182.123.2.31"]
      }
    ]
  }
}
