# proto-pipelines
Repository for two pipelines that take the Spring Music (https://github.com/cloudfoundry-samples/spring-music) application artifacts and run in a (1) PCF environment and (2) AWS AMI environment.

<h1>Prereq</h1>

Application jar file and manifest in S3 bucket in AWS.

<h1>Pipeline 1 (app-to-pcf)</h1>

Pushes spring music jar to PCF using CF resource (https://github.com/concourse/cf-resource)
  
<h1>Pipeline 2 (app-to-vm)</h1>

Uses a Packer resource (https://github.com/jdub/packer-resource) to build an AWS AMI with Packer. 
Packer uses the ansible provisioner (https://www.packer.io/docs/provisioners/ansible-local.html) to build the infrastructure environment and deploy application jar - though this could easily be replaced by other packer provisioners (Chef, shell, etc.).

Based on Concourse-Packer pipelines that build AMI's running Concourse (https://github.com/patrickcrocker/concourse-packer)
