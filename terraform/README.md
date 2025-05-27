# Terraform GitHub Configuration

This directory contains Terraform scripts to configure a GitHub repository according to specified requirements. The scripts automate the setup of branch protections, collaborators, and other repository settings.

## Prerequisites

- Ensure you have Terraform installed on your machine.
- You need a GitHub Personal Access Token (PAT) with the necessary permissions to manage repositories.
- Set the PAT as a secret in your repository with the name `PAT`.

## Usage

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd github-terraform-task-Lenykmax/terraform
   ```

2. **Initialize Terraform**:
   Run the following command to initialize the Terraform configuration:
   ```bash
   terraform init
   ```

3. **Configure Variables**:
   Update the `variables.tf` file with your specific configurations, such as the repository name and collaborator username.

4. **Plan the Deployment**:
   Generate an execution plan to see what actions Terraform will take:
   ```bash
   terraform plan
   ```

5. **Apply the Configuration**:
   Apply the Terraform configuration to create and configure the GitHub repository:
   ```bash
   terraform apply
   ```

6. **Verify the Setup**:
   After applying, check your GitHub repository to ensure that all configurations have been applied correctly.

## Outputs

After running the Terraform scripts, you will receive outputs that provide information about the created repository, branch protections, and other relevant details.

## Notes

- Make sure to review the `README.md` in the root directory for additional context and requirements related to this project.
- For any issues or questions, refer to the project's documentation or reach out to the maintainers.