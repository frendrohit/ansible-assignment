<<<<<<< HEAD
Ansible Installation        : 	yum install ansible

To check Ansible version    : 	ansible --version

Parameters in ansible.cfg   : 	Done

set retry_files_save_path   :  	retry_files_save_path = ~/.ansible/retry-files

Forks to 10                 : 	forks          = 10

Problem statement to install:

1. ansible webserver -m yum -a "name=nginx state=latest"

2. ansible webserver -m copy -a "src=/opt/nginx.conf dest=/etc/nginx/"

3. ansible webserver -m copy -a "src=/opt/index.html dest=/opt/html"

4. ansible webserver -m service -a "name=nginx state=restarted"

