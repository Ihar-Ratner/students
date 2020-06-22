Vagrant.configure("2") do |config|

	config.vm.box = "bento/centos-7.5"
	#config.vm.box = "centos/7"
	#config.vm.box = "sbeliakou/centos"
	#config.vm.box_version = "7.6"
	config.vm.synced_folder "c:/Ihar_ratner/students/", "/vagrant"
	config.ssh.username = "vagrant"
	config.ssh.password = "vagrant"

	config.vm.provider "virtualbox" do |vb|
		vb.memory = "2048"
		vb.cpus = "1"
	end

	config.vm.define "balancer" do |balancer|
		balancer.vm.hostname = "balancer"
		balancer.vm.network "private_network", ip: "192.168.150.10"
		balancer.vm.provision :shell, :path => "balancer.sh"
	end
	
	config.vm.define "web1" do |web1|
		web1.vm.hostname = "web1"
		web1.vm.network "private_network", ip: "192.168.150.11"
		web1.vm.provision :shell, :path => "web1.sh"
	end
	
	config.vm.define "web2" do |web2|
		web2.vm.hostname = "web2"
		web2.vm.network "private_network", ip: "192.168.150.12"
		web2.vm.provision :shell, :path => "web2.sh"
	end

end