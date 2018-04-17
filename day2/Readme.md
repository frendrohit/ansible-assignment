Ansible facts using the setup module						:	 	ansible local -m setup

display only the "virtual" subset of facts for each host			:	 	ansible local -m setup -a 'gather_subset=virtual'

uptime of all hosts using the command module					:		ansible all -m command -a uptime

Ping all hosts except the 'control' host using the --limit option		:	 	ansible groupname -m ping --limit 'hostname'

Setup Java8 on the hosts in the "App" group using the apt module.		:		ansible -s app -m apt -a 'name=java state=latest'

Setup and enable the EPEL package repository on the hosts in 
the "web" group using the yum module.						:		ansible -s web -m yum -a 'name=epel-release state=latest'


Assignment									:							:	
 
 
ansible localhost -m command -a "echo 'echo '$hostname' '$date' >> /var/log/ninja_name' > /home/ansible/test.sh" -m cron -a 'minute=1 job=/home/ansible/test.sh'
