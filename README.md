# Automated Security Monitoring: Deploying Wazuh on Google Cloud Platform with Terraform

## Project Overview

The "Automated Security Monitoring: Deploying Wazuh on Google Cloud Platform with Terraform" project aims to automate the deployment of a robust security monitoring infrastructure using Wazuh on Google Cloud Platform (GCP). By utilizing Terraform for infrastructure-as-code, the project streamlines the deployment process, making it consistent, scalable, and easily reproducible.

## Features

- **Automated Deployment:** Utilize Terraform to automate the provisioning of Wazuh components on GCP infrastructure.
- **Flexible Configuration:** Easily customize the deployment by adjusting Terraform variables and configuration files.
- **Centralized Security Monitoring:** Establish a centralized platform for log analysis, intrusion detection, and compliance monitoring.
- **Scalable Infrastructure:** Leverage GCP resources to create a scalable and resilient security monitoring environment.

## Project Structure

The project is organized into the following key components:

- **provider.tf:** - Configure Google Cloud provider.
- **network-firewall.tf:** Configure basic firewall for the network.
- **network.tf:** Define network, vpc, subnet, icmp firewall.
- **terraform.tfvars:** Defining variables.
- **variables-auth.tf:**  Application and authentication variables.
- **vm-output.tf:** Output of VM.

## Getting Started

1. **Prerequisites:**
   - Install Terraform: [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)
   - Configure GCP credentials: [Google Cloud Authentication Guide](https://cloud.google.com/docs/authentication/getting-started)

2. **Clone the Repository:**
   ```bash
   git clone https://github.com/SanjaiSaran/terraform-GCP.git
   cd terraform-GCP

## Initialize and Apply:
 ```bash
 terraform init
 terraform apply
```

## Review the Configuration:
 - Customize Terraform variables and configurations in terraform.tfvars according to your requirements.

## Access Wazuh Manager:
 - Once the deployment is complete, access the Wazuh manager and proceed with additional configurations.

