variable "token" {}

variable "secret-mounts" {
	default = {
	  roboshop-dev = {
		 description = "roboshop project dev secrets"

	  }
	}
}
 variable "secrets" {
   default = {
     cart = {
       secret_mount = "roboshop-dev"
       kv = {
         REDIS_HOST     = "redis-dev.gdevops72.com"
         CATALOGUE_HOST = "catalogue-dev.gdevops72.com"
         CATALOGUE_PORT = 8080
       }
     }
     frontend = {
		secret_mount = "roboshop-dev"
        kv = {
          "CATALOGUE URL"     = "http://catalogue-dev.gdevops72.com:8080/",
          "USER URL" = "http://user-dev.gdevops72.com:8080/",
          "CART URL" = "http://shipping-dev.gdevops72.com:8080/",
          "SHIPPING URL" = "http://shipping-dev.gdevops72.com:8080/",
          "PAYMENT URL" = "http://shipping-dev.gdevops72.com:8080/"
         }
	 }
   }
 }