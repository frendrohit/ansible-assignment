Create and delete ninja directory on host machine	:	ansible localhost -m file -a "path=/opt/ansible/ninja state=directory"


Set hostname on all nodes from remote machine		:	 ansible localhost -m hostname -a "name=master"


Fetch os of all nodes and store o/p into a file		:	ansible localhost -m setup -a "filter=ansible_os_family" > /opt/osdetail


Add three group into hosts file through ansible module	:	ansible localhost -m add_host -a "hostname=client groups=webserver"


Install apache on Debian machine			:	ansible localhost -m apt -a "name=httpd state=latest"


Cross check apache isntalled or not from remote machine	:	ansible localhost -m yum -a "list=httpd state=latest" | grep -i installed


Apache runn  on 8082 port				:	ansible localhost -m copy -a "src=/opt/httpd/httpd.conf dest=/etc/httpd/conf"


Create two virtual host					:	ansible localhost -m copy -a "src=/opt/httpd/vhost.conf dest=/etc/httpd/conf.d"


Restart apache from remote machine			:	ansible localhost -m service -a "name=httpd state=latest"


Install nginx on centos machine				:	ansible localhost -m yum -a "name=nginx state=latest"


Nginx run on 8080 port					:	ansible localhost -m copy -a "src=/opt/nginx/nginx.conf dest=/etc/nginx"


Configure Nginx - configure it to run as reverse proxy to apache	:	ansible localhost -m copy -a "src=/opt/nginx/nginx.conf dest=/etc/nginx"
