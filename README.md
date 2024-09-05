# AWS CloudFront S3 Web Hosting with Terraform

This project automates the deployment of a static website on AWS using CloudFront, S3, Route 53 for DNS management, SSL certificate for secure connections, and Terraform for infrastructure as code.

![arch](https://github.com/user-attachments/assets/a3c1425f-e23d-4730-99c4-c54ae2282a97)

## Steps to deploy application
1. Create AWS [IAM User](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html#id_users_create_console)

2. Set necessory permision to create and destroy S3 resources (Eg: **AmazonS3FullAccess** or **AdministratorAccess**)<br>
    > use Permissions --> Add permissions --> Attach policies directly

3. Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

4. Configure AWS [IAM User in AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/configure/)<br>
    ```
    $ aws configure
    AWS Access Key ID [None]: <accesskey>
    AWS Secret Access Key [None]: <secretkey>
    Default region name [None]: <default-region> eg: us-east-1
    Default output format [None]: json
    ```
    > Check user is configured correctly<br>`$ aws iam list-users`

5. Install [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

6. Initialize the project <br>
    `$ terraform init`

7. Plan the resouces need to create <br>
    `$ terraform plan`

8. Update bucket name, domain name (optional), hosted zone (optional), certificate arn (optional)  in `variables.tf` (bucketname should be globally unique)

9. Deploy the project<br>
    `$ terraform apply -auto-approve`<br>
    
    ![tf-apply](https://github.com/user-attachments/assets/a3a4554f-36ce-44a5-aa64-6c172b19d314)

    > Outputs:<br>
    cloudfront_distribution_domain_name = "d3czqno9gzt2xt.cloudfront.net"

10. Open the browser and enter the website endpoint in address bar (Eg: `d3czqno9gzt2xt.cloudfront.net`)

    ![app](https://github.com/user-attachments/assets/a8a253eb-3dcf-4c00-81da-0a3b9b92a69f)

11. Destroy the project<br>
    `$ terraform destroy -auto-approve`

    **Check everything is cleaned up and destroyed**

For more information follow the [Terraform official documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
