 

#  WordPress Deployment on AWS with Terraform

This project demonstrates how to use Terraform to provision an EC2 instance and deploy WordPress on AWS using Docker Compose.  
The goal was to create a fully automated, reproducible environment using infrastructure as code, including a custom VPC, subnets, and security groups.  

---

##  Features

- Automated provisioning of an EC2 instance with Terraform  
- Deployment of WordPress using Docker Compose  
  - Multi-container setup including WordPress and MySQL  
  - Containers automatically started after instance provisioning  
- Security groups configured for HTTP and SSH  
- Custom VPC, subnets, and networking setup  
- Modular Terraform code for clean, reusable infrastructure  
- Ready-to-use WordPress site accessible via the EC2 public IP  

---

##  Security Notes

- Always store AWS credentials securely (use environment variables or AWS Vault)  
- Do not commit `.tfvars` or any sensitive files containing secrets  
- Restrict SSH access in the Security Group to your IP only  
- Use secure passwords for WordPress admin and database  

---

##  Future Improvements
 
- Configure HTTPS with an SSL certificate  
- Add monitoring and alerts for EC2 and WordPress performance   
- Integrate CI/CD to automatically test Terraform plans and WordPress availability  
  

---

##  Learning Note

This project was a major learning journey in my DevOps path.  

I became much more comfortable with Terraform, especially after struggling with understanding modules and how to connect them together. I kept going until it started making sense, and now I have a much better understanding of modular infrastructure design than when I first started using Terraform.  

I also learned a lot about AWS networking, including how to set up custom VPCs, subnets, and security groups for a production-ready environment.  

Additionally, using Docker Compose to orchestrate WordPress and MySQL containers taught me how to manage multi-container applications, ensuring they start automatically and work together seamlessly.  

Overall, this project challenged me, taught me perseverance, and significantly strengthened my DevOps, cloud infrastructure, and container orchestration skills. It was an incredibly rewarding experience.  
