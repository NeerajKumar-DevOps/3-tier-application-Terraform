#  3-Tier Application Infrastructure using Terraform on AWS 

##  Project Overview
I have created highly scalable and secure 3-tier architecture on AWS using Terraform.


- Tier 1 (Frontend) – Load Balancer and Web Servers
- Common Infra
- – VPC, Subnets, Security Groups, NAT Gateway

- Tier 2 (Backend)
- – user, catalogue, cart, payment, shipping

- Tier 3 (Database)
- – mongodb, redis, mysql, rabbitmq


---

##  Architecture Diagram
(Add your diagram image here)

![Architecture Diagram](./architecture.png)

---

##  Tech Stack
- Cloud Provider: AWS  
- Infrastructure as Code: Terraform  
- Version Control: Git & GitHub  

### Services Used:
- EC2  
- VPC  
- Application Load Balancer (ALB)  
- RDS  
- NAT Gateway  
- Security Groups  
- IAM  

---

## 📂 Project Structure
```
project/
│
├── tier1-frontend/   # (Frontend), Shared resources (VPC, Security Groups, IAM)
├── tier2-backend/    # Backend services
├── tier3-database/   # RDS database
│
├── README.md
└── .gitignore
```

##  Key Features
- Modular Terraform design  
- Reusable infrastructure components  
- Secure networking with private/public subnets  
- Scalable 3-tier architecture  
- Separation of concerns across tiers  
- Infrastructure automation using Terraform  

---

## 💡 Challenges Faced
- Managing Terraform state and dependencies across multiple modules  
- Handling nested Git repository issues while structuring the project  
- Debugging AWS resource creation errors (ALB, Security Groups, etc.)  
- Designing a clean and reusable module structure  


---

##  Future Improvements
- Add CI/CD pipeline (GitHub Actions / Jenkins)  
- Implement remote backend (S3 + DynamoDB)  
- Add monitoring (CloudWatch)  
- Add autoscaling for frontend/backend  

---

##  What I Learned
- Terraform module structuring  
- AWS networking (VPC, subnets, NAT Gateway)  
- Debugging real-world infrastructure issues  

---

## 🙌 Author
Neeraj Kumar