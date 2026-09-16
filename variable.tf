variable "token" {}

variable "secret-mounts" {
	default = {
	  roboshop-dev = {
		 description = "roboshop project dev secrets"

	  }
	}
}
