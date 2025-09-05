variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
  default     = "minifinance-bucket"
}




# variable "bucket_name":
# This declares a variable with the identifier bucket_name.
# When this configuration is applied, a value will be assigned to this variable.
# description = "The name of the S3 bucket to create":
# This provides a human-readable description of the variable's purpose. 
#It explains that bucket_name is intended to store the name for an Amazon S3 bucket that will be created.
# This helps in understanding the code and its intent.
# type = string:
# This specifies the data type of the bucket_name variable.
# In this case, it indicates that the value assigned to bucket_name must be a string (i.e., a sequence of characters).
# default = "minifinance-bucket":
# This sets a default value for the bucket_name variable.
#If no explicit value is provided for bucket_name when the configuration is executed,
# it will automatically use "minifinance-bucket" as its value. 
#This provides a convenient fallback and can be overridden if a different bucket name is desired.