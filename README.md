# 🚀 DevOps Project: Automated AWS Infrastructure Deployment using Terraform, Ansible & GitHub Actions

## 📌 Project Overview

This project demonstrates a complete DevOps pipeline that automatically:

* Provisions AWS infrastructure using Terraform
* Configures the server using Ansible
* Deploys Docker and runs an Nginx container
* Automates everything using GitHub Actions CI/CD

The deployment is fully automated and reproducible.

---

# 🏗 Architecture Diagram

```
Developer
   │
   │ git push
   ▼
GitHub Repository
   │
   ▼
GitHub Actions CI/CD Pipeline
   │
   ├── Terraform → Creates AWS Infrastructure
   │       ├── VPC
   │       ├── Subnet
   │       ├── Security Group
   │       └── EC2 Instance
   │
   └── Ansible → Configures EC2
           ├── Install Docker
           ├── Start Docker service
           └── Run Nginx container
                     │
                     ▼
              Application accessible via Browser
```

---

# ☁️ Technologies Used

* AWS EC2
* Terraform
* Ansible
* Docker
* GitHub Actions
* Linux (Ubuntu)
* SSH

---

# 📂 Project Structure

```
project/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── ansible/
│   ├── inventory
│   └── install_docker.yml
│
├── .github/workflows/
│   └── deploy.yml
│
└── README.md
```

---

# ⚙️ Terraform Instructions

## Initialize Terraform

```bash
cd terraform
terraform init
```

## Apply Infrastructure

```bash
terraform apply
```

This will create:

* EC2 instance
* Security Group
* Network configuration

---

# 🤖 Ansible Instructions

## Run Playbook

```bash
cd ansible
ansible-playbook -i inventory install_docker.yml
```

This will:

* Install Docker
* Start Docker service
* Run Nginx container

---

# 🔄 CI/CD Pipeline (GitHub Actions)

Pipeline automatically runs when pushing to main branch.

## Pipeline Steps

1. Checkout repository
2. Run Terraform init
3. Run Terraform apply
4. Get EC2 public IP
5. Run Ansible playbook
6. Deploy Docker container

Trigger:

```
git push origin main
```

---

# 🌐 Access Application

After deployment, open browser:

```
http://EC2_PUBLIC_IP
```

You should see Nginx welcome page.

---

# ✅ Validation Steps

Verified:

✔ Terraform provisions infrastructure
✔ Ansible installs Docker
✔ Docker container runs successfully
✔ Application accessible via browser
✔ CI/CD pipeline runs automatically
✔ Idempotency verified (pipeline can run multiple times safely)

---

# 🔐 Security

Sensitive data stored in GitHub Secrets:

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY
* SSH_PRIVATE_KEY

---

# 📸 Screenshots (Add these)

Include screenshots of:

* EC2 instance running
* Security group rules
* GitHub Actions successful pipeline
* Nginx running in browser

---

# 🎯 Project Outcome

This project demonstrates real-world DevOps skills:

* Infrastructure as Code (Terraform)
* Configuration Management (Ansible)
* CI/CD Automation (GitHub Actions)
* Cloud deployment (AWS)
* Container deployment (Docker)

---

# 👨‍💻 Author

DevOps Engineer Project
Automated Cloud Infrastructure Deployment
