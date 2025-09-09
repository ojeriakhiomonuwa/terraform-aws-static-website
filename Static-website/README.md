# Static Website Deployment with Terraform

This project provisions and manages the infrastructure required to host a **static website** on AWS using **Terraform**.  
It uses **S3, CloudFront, ACM, and Route53** with **CI/CD pipelines** for automatic deployment and destruction.  


##  AWS Resources Used 

### 1. **S3 Buckets**
- Store static website files (HTML, CSS, JS, images).  
- Configured for secure storage (no public access, only CloudFront can access).  
- Logging bucket may also be included to store CloudFront/S3 access logs.  

### 2. **ACM (AWS Certificate Manager)**
- Issues an **SSL/TLS certificate** for your custom domain (e.g., `www.example.com`).  
- Ensures secure HTTPS connections through CloudFront.  

### 3. **Route53**
- Manages DNS records for your domain.  
- Points your domain (like `ojes.online`) to the CloudFront distribution.  

### 4. **CloudFront**
- A **Content Delivery Network (CDN)** that caches and distributes your static website globally.  
- Provides fast performance and HTTPS support with the ACM certificate.  



##  CI/CD Workflows

This project uses **GitHub Actions** for automation:

1. **Terraform Deploy (apply.yml)**  
   - Runs on every push to `main`.  
   - Steps:  
     - `terraform init`  
     - `terraform validate`  
     - `terraform plan`  
     - `terraform apply` (auto-approved)  
   - Automatically deploys your infrastructure.

2. **Terraform Destroy (destroy.yml)**  
   - Triggered manually from the Actions tab.  
   - Runs `terraform destroy -auto-approve`.  
   - Cleans up all resources when you’re done.

---

##  Prerequisites

- AWS Account with programmatic access.  
- Terraform installed (if testing locally).  
- Domain name managed in Route53.  
- GitHub repo with the following **Secrets** configured:
  - `AWS_ACCESS_KEY_ID`  
  - `AWS_SECRET_ACCESS_KEY`  

