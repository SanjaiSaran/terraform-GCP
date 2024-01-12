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

- **main.tf:** Defines the GCP provider and creates the VPC, subnetworks, and other networking components.
- **compute.tf:** Configures virtual machine instances for Wazuh manager and potentially other components.
- **storage.tf:** Sets up storage buckets if needed.
- **wazuh-manager-startup.sh:** Startup script for configuring the Wazuh manager on the VM instance.

## Getting Started

1. **Prerequisites:**
   - Install Terraform: [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)
   - Configure GCP credentials: [Google Cloud Authentication Guide](https://cloud.google.com/docs/authentication/getting-started)

2. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/automated-security-monitoring.git
   cd automated-security-monitoring

## Initialize and Apply:
 ```bash
 terraform init
 terraform apply
```

## Review the Configuration:
 - Customize Terraform variables and configurations in main.tf according to your requirements.

## Access Wazuh Manager:
 - Once the deployment is complete, access the Wazuh manager and proceed with additional configurations.


# Terraform-GCP
we will create: Vpc, Subnet, firewall rule, 3 instances
# files
1.network-firewall.tf - Configure basic firewall for the network

2.network.tf - Define network, vpc, subnet, icmp firewall

3.provider.tf - Configure Google Cloud provider

4.terraform.tfvars - Defining variables

5.variables-auth.tf - Application and authentication variables

6.vm-output.tf - Output of VM
