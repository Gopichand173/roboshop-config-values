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
   }
 }