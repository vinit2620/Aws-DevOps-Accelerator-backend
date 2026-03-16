# DevOps Accelerator: End-to-End Cloud-Native Project

A fully integrated DevOps project simulating real-world CI/CD workflows, infrastructure provisioning, monitoring, and automation.
---

## Project Overview

This DevOps Accelerator enables users to
- Upload input files through a frontend hosted on S3 + CloudFront
- Automatically trigger processing via Lambda and S3 events
- Use pre-signed URLs for secure uploads
- Deploy and manage infrastructure using Terraform
- Automate pipelines via GitHub Actions
- Monitor health and logs via CloudWatch

---

## The flow (How It Works)

1. User visits frontend site through browser.
2. Navigates through all the sections.
3. Makes the payment and uploads the screenshot / .pdf file.
3. Uploaded input file is converted to pre-signed URL and placed in S3 bucket.
4. S3 event triggers → Lambda execution.
5. Lambda processes the file and logs the result in CloudWatch.
6. SNS alert sent to the owner after successful processing.

---


## Tech Stack

| Layer             | Tools & Services                        |
|------------------|------------------------------------------|
| Frontend         | HTML/CSS + S3 + CloudFront               |
| Backend (Event)  | AWS Lambda (Python)              |
| Infrastructure   | Terraform (modular setup & remote backend)                |
| CI/CD            | GitHub Actions (Workflows & Triggers)    |
| Monitoring       | CloudWatch (Logs, Alarms, Dashboard)     |
| Notification     | SNS (Email alerts for file uploads)      |
| Security         | IAM Roles, Policies, Bucket Permissions  |

---


## What's covered in this DevOps Accelerator Platform


#### Infrastructure Auto-Provisioning with Terraform

- Automated infra management using Terraform.

- Remote backend configured with S3 for state file and DynamoDB for state locking.


#### End-to-End CI/CD Automation with GitHub Actions

- Fully automated workflows for:
	
	- Frontend deployment (S3 + CloudFront)
	
	- Backend Lambda packaging & deployment
	
	- Terraform infrastructure provisioning
	
- Separate pipelines for each component.


#### Cloud-Native Hosting (No Server Management Needed)

- Static frontend hosted on S3 + CloudFront CDN for global delivery.

- Backend logic served through AWS Lambda using REST APIs.

- Everything is serverless-first, cost-efficient, and easily scalable.


#### Secure File Upload Workflow Using Pre-Signed URLs

- Users securely upload files using pre-signed S3 URLs.

- Upload triggers processing Lambda without exposing S3 directly.


#### Automated Monitoring & Alerting

- AWS CloudWatch monitors backend Lambda executions.

- AWS SNS notifies on every successful file processing event.

- Auto-alerts configured for error detection and operational visibility.


#### Modular Gigs to Extend the Platform

- Easily extendable with plug-and-play gig modules like:

	- Project Generator

	- QA Bot

- New gigs can be added without disrupting the core pipeline.


#### Organized Folder Structure for Scalability

- Clean, modular repo layout separating infra, frontend, backend, and workflows.

- Easy to replicate in other AWS accounts.


---


## Folder Structure

```
DevOps-Accelerator-Project
├── .github
│   └── workflows
│       ├── backend-deploy.yml
│       ├── frontend.yml
│       └── terraform.yml
├── backend
│   └── lambda
│       ├── generate-presigned-url
│       │   ├── lambda.zip
│       │   └── main.py
│       └── process-uploaded-file
│           ├── lambda.zip
│           └── main.py
├── frontend
│   └── index.html
├── gigs
│   ├── project-generator
│   └── qa-bot
├── infra
│   └── terraform
│       ├── main.tf
│       ├── outputs.tf
│       ├── terraform.tfvars
│       └── variables.tf
└── README.md
└── .gitignore

```

*  Auto-scalable infrastructure (via Terraform)
*  CI/CD pipelines (GitHub Actions)
*  Lambda-powered backend (serverless)
*  Frontend hosted via S3 + CloudFront
*  Monitoring + Email notifications via CloudWatch + SNS
