🚀 Terraform AWS EC2 Nginx Deployment
=====================================

📌 Project Overview
-------------------

This project demonstrates how to use **Terraform (Infrastructure as Code)** to automate the deployment of an **Nginx Web Server on AWS EC2**.

Terraform provisions AWS resources including **EC2 instance, Security Group, Key Pair, and networking configuration**, and automatically installs **Nginx** using a **user data script**.

This project represents a **basic Infrastructure Automation workflow** commonly used in **Cloud Engineering and DevOps environments**.

🛠 Technologies Used
--------------------

*   **Terraform** – Infrastructure as Code (IaC)
    
*   **AWS EC2** – Virtual Server
    
*   **AWS Security Groups** – Network Access Control
    
*   **Bash Script** – Server Configuration
    
*   **Nginx** – Web Server
    
*   **Git & GitHub** – Version Control
    

🏗 Architecture
---------------

Terraform automatically creates the following resources:

*   AWS **EC2 Instance**
    
*   **Security Group** allowing:
    
    *   SSH (Port 22)
        
    *   HTTP (Port 80)
        
*   **Key Pair** for secure SSH login
    
*   **Nginx Web Server** installed via user\_data
    

Workflow:

1.  Terraform initializes AWS provider
    
2.  Creates default VPC
    
3.  Creates Security Group with HTTP and SSH access
    
4.  Launches EC2 instance
    
5.  Executes install\_nginx.sh
    
6.  Nginx server becomes accessible via Public IP
    

📂 Project Structure
--------------------

terraform-aws-nginx-ec2

├── main.tf├── variables.tf├── outputs.tf├── install\_nginx.sh├── .gitignore└── README.md

⚙️ How to Run the Project
-------------------------

### 1️⃣ Clone the repository

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   git clone https://github.com/YOUR_USERNAME/terraform-aws-nginx-ec2.git  cd terraform-aws-nginx-ec2   `

### 2️⃣ Initialize Terraform

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   terraform init   `

### 3️⃣ Review execution plan

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   terraform plan   `

### 4️⃣ Deploy infrastructure

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   terraform apply   `

Terraform will provision AWS infrastructure and output:

*   Public IP
    
*   Public DNS
    

🌐 Access the Web Server
------------------------

Open the browser and enter:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   http://EC2_PUBLIC_IP   `

You will see:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   Terraform Hello World   `

📊 Key DevOps Concepts Demonstrated
-----------------------------------

*   Infrastructure as Code (IaC)
    
*   Cloud resource automation
    
*   Automated server provisioning
    
*   Configuration using user\_data
    
*   Version control with GitHub
    
*   Basic cloud networking
    

🔐 Security Considerations
--------------------------

*   Security Group allows only required ports (22 & 80)
    
*   SSH access via key pair authentication
    
*   Infrastructure defined as code for reproducibility
    

👨‍💻 Author
------------

**Vishal Maurya**B.Tech CSE (Cloud Computing)Aspiring Cloud & DevOps Engineer
