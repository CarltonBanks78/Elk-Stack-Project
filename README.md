# Elk-Stack-Project
Configuring an ELK stack server in order to set up a cloud monitoring system. This project resulted in tangible deliverables that demonstrate understanding of cloud, network security, logging and monitoring.

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

(Elk-Stack-Project/Diagrams/Cloud-Security-With-Elk-Diagram.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yml file may be used to install only certain pieces of it, such as Filebeat.

  - Elk-Stack-Project/ELK_stack/install-ell.yml.

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly avaliable, in addition to restricting congestion to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_
- Load balancers protect availablity of a company, the advantage of a jump box is to spread traffic throughout the servers. This reduces the amount of traffic a single server gets in a collection, and reduces the effectivness of a DDOS attack.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files and system metrics.
- _TODO: What does Filebeat watch for?_
- Filebeat monitors log files and collects log events, then the information is forwarded to either logstach or Elasticsearch.
- _TODO: What does Metricbeat record?_
- Metricbeat records metrics from the server and OS.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
 Jump Box   | Gateway   | 10.0.0.4  | Linux |
|------------|-----------|-----------|-------|
| Elk-server | ELKSERVER | 10.1.0.6  | Linux |
| Web1       | Webserver | 10.0.0.10 | Linux |
| Web 2      | Webserver | 10.0.0.5  | Linux |
### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
 - My Public IP

- The IP from the Jumpbox is 10.1.0.4

Machines within the network can only be accessed by Jumpbox IP.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_
- The only Machine that could acces my ELK VM was my Jumpbox VM with IP 10.1.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box   | Yes/No            | Home IP Address |
|------------|-------------------|-----------------|
| Web-1      | Yes -ssh          | 10.1.0.5        |
| Web-2      | Yes -ssh          | 10.1.0.7        |
| Elk-Server | Kibana - 5601 yes | 10.0.0.4        |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...

 the scrips can run identically which limits human error in Configuring and scripting, also this expedites the process of configuring in general

The playbook implements the following tasks:
-  Installs Docker
-  Installs Python-pip
- Install Docker Python Module
- Installs Virtual Memory
- Downloads and Launches a docker ELK container with the following published ports; 5601, 9200, 5044
The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Elk-Stack-Project/Diagrams/Images/Docker_Ps_Output/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1 10.1.0.5
- Web-2 10.1.0.7

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat is a lightweight shipper for forwarding and centralizing log data, therefore we can expect to use log data when dealing with Filbeat. 
- Metricbeat us a module that can be defined as the basic logic for collecting data from a specific service, such as Redis, MySQL. I used them to colelct metrics and OS on the machines I was monitoring. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the install-elk.yml file to /etc/ansible/files/.
- Update the hosts file to include... the Elk Server IP address of 10.0.0.4 under elkservers
- Run the playbook, and navigate to ansible-playbook elk-playbook.yml /etc/ansible/ http://116.203.203.11/:5601 to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- /etc/ansible/elk-playbook.yml. Copy to the directorty
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- Update the "hosts" files. Add the private IP under "servers"

- _Which URL do you navigate to in order to check that the ELK server is running?
- http://116.203.203.11/:5601
