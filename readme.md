#  3-Tier Application Infrastructure using Terraform on AWS 

##  Project Overview
As per my experience and knowledge i have created this shopping app project. I will mention each resource & service below.
---

## 📂 Project Structure
```
3-tier application using Terraform
│
├── tier1-frontend/--->vpc, frontend tg, security group, ALB, Bastion
├── tier2-backend/--->user, catalogue, cart, payment, shipping
├── tier3-database/--->mongodb, mysql, rabbitmq, redis
├── README.md
```

### 1. Project Infrastructure (One-Time Setup)
These resources are created once and reused:
- VPC (Network)
- Subnets
- Security Groups
- Internet Gateway (IGW)
- NAT Gateway (NGW)
- Route Tables

### 2. Application Infrastructure (Dynamic)
These resources change based on requirements and are parameterized using variables:
- EC2 Instances
- S3 Buckets
- Databases

---

#  Tier 1: Frontend

##  Networking Setup
- Create VPC with CIDR block
- Create and attach Internet Gateway (IGW)

##  Availability Zones
- us-east-1a  
- us-east-1b  

##  Subnets Creation

| Subnet Type | CIDR          | AZ          |
|------------|--------------|-------------|
| Public     | 10.0.1.0/24  | us-east-1a  |
| Public     | 10.0.2.0/24  | us-east-1b  |
| Private    | 10.0.11.0/24 | us-east-1a  |
| Private    | 10.0.12.0/24 | us-east-1b  |

##  Route Tables
- spacex-dev-public
- spacex-dev-private
- spacex-dev-database

##  Route Table Associations
- Associate public and private subnets accordingly

##  Networking Components
- Create Elastic IP → `spacex-dev-elasticip`
- Create NAT Gateway → `spacex-dev-NAT`
- Attach EIP to NAT Gateway

##  Routing
- Public subnets → Internet access via IGW  
- Private subnets → Egress via NAT Gateway  
- Database subnets → Egress via NAT Gateway  

##  VPC Peering
- Configure VPC peering if required

---

##  Frontend Compute & Load Balancing
- Create Frontend EC2 Instance
- Create Load Balancer
- Configure:
  - Listener
  - Listener Rules
  - Target Group
  - Health Checks

##  Bastion Host
- Create Bastion instance for secure SSH access

---

#  Tier 2: Backend

##  Service Setup (Catalogue Example)
- Launch EC2 instance
- Configure using Ansible

##  AMI Creation
- Stop instance
- Create AMI → base image (`devops-practice`)

## Auto Scaling Setup
- Create Launch Template
- Create Target Group
- Create Auto Scaling Group (ASG)
- Attach ASG to Target Group

##  Scaling Policies
- Configure Auto Scaling policies

##  Listener Rules
- Add rules for routing traffic

##  Repeat for Other Services
Same setup applies for:
- User
- Cart
- Payment
- Shipping

---

#  Tier 3: Database

##  Database Setup
- Install and configure MongoDB

##  Repeat for Other Databases
Same process applies for:
- MySQL
- Redis
- RabbitMQ


## 🙌 Author
Neeraj Kumar