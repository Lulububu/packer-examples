# Install EPEL repository.
rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm 
 
 # Install Ansible.
yum -y install libselinux-python ansible
    
# There must be a better way of managing ansible-galaxy roles in Windows 
# sed -i '/roles_path/c\roles_path=./roles/ansible-galaxy' /etc/ansible/ansible.cfg