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
          CATALOGUE_URL     = "http://catalogue-dev.gdevops72.com:8080/",
          USER_URL = "http://user-dev.gdevops72.com:8080/",
          CART_URL = "http://shipping-dev.gdevops72.com:8080/",
          SHIPPING_URL = "http://shipping-dev.gdevops72.com:8080/",
          PAYMENT_URL = "http://shipping-dev.gdevops72.com:8080/"
         }
	 }
     catalogue = {
		secret_mount = "roboshop-dev"
        kv = {
        MONGO_URL     = "mongodb://mongodb-dev.gdevops72.com:27017/catalogue",
        MONGO = "true"
       }
	 }
     user = {
     	secret_mount = "roboshop-dev"
        kv = {
        REDIS_URL     = "redis://redis-dev.gdevops72.com:6379",
        MONGO = "true",
        MONGO_URL = "mongodb://mongodb-dev.gdevops72.com:27017/users"
        }
	 }
     mysql = {
        secret_mount = "roboshop-dev"
        kv = {
		ROOT_PASSWORD     = "RoboShop@1",
       }
	 }
     shipping = {
       secret_mount = "roboshop-dev"
       kv = {
       CART_ENDPOINT     = "cart-dev.gdevops72.com:8080",
       DB_HOST = "mysql-dev.gdevops72.com",
       DB_USER = "root",
       DB_PASS = "RoboShop@1"
       }
     }
     rabbitmq = {
       secret_mount = "roboshop-dev"
       kv = {
	   APP_USER         = "roboshop",
	   APP_PASSWORD     = "roboshop123"
       }
     }
   }
 }