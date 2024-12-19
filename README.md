<h1>Static Website hosting on AWS s3 with Terraform</h1> 

1. git clone the project
   git clone https://github.com/kadamvignesh/Website-hosting-with-Terraform.git

2. Make sure you have aws cli and terraform installed in your system

3. Perform terraform cmds:
    terraform init   terraform validate   terraform plam   terraform apply

4. Now, go to your buckets in aws management console and update the policy
     {
     "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::yours-unique-bucket/*"
         }
      }
   }

5. Run the URL given by terraform

![image alt](https://github.com/kadamvignesh/Website-hosting-with-Terraform/blob/main/Screenshot%20(142).png?raw=true)


![image alt](https://github.com/kadamvignesh/Website-hosting-with-Terraform/blob/main/Screenshot%20(144).png?raw=true)



![image alt](https://github.com/kadamvignesh/Website-hosting-with-Terraform/blob/main/Screenshot%20(145).png?raw=true)
