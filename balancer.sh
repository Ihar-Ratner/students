echo "UPDATE AND UPGRADE"
yum update -y
yum upgrade -y
##############################
echo "INSTALL TOOLS"
yum -y install bash-completion bash-completion-extras
yum -y install git
yum -y install nano
yum -y install mc
yum -y install sshpass
yum -y install epel-release
yum -y install nginx
echo "COPY nginx conf"
cp /vagrant/nginx.conf /etc/nginx/nginx.conf
systemctl restart nginx
systemctl start nginx
systemctl enable nginx