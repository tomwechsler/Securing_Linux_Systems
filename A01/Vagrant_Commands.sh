#Add a Box to Vagrant (copy a box to the local system)
vagrant box add ubuntu/jammy64

#Create a Working Folder
mkdir linuxclass

#Change into the Working Folder
cd linuxclass

#Create a Vagrant Project Folder
mkdir ubuntu

#Create Your First Vagrant Project
cd ubuntu
vagrant init ubuntu/jammy64

#Create Your First Virtual Machine
vagrant up

#Change the Virtual Machine's Name
#Add the following line somewhere after "Vagrant.configure(2) do |config| " and before
#"end ". A good place could be right after the 'config.vm.box = "ubuntu/jammy64" ' line:
config.vm.hostname = "ubuntu01"

#Be sure to save your changes

#To apply the settings (instead of vagrant halt an vagrant up)
vagrant reload

#Assign the Virtual Machine an IP Address (direct under the hostanme)
config.vm.network "private_network", ip: "192.168.56.101"

#Be sure to save your changes

#To apply the settings (instead of vagrant halt an vagrant up)
vagrant reload

#Test
ping -c 3 192.168.56.101

#Destroy the Virtual Machine
vagrant destroy

#Create Another Vagrant Project with Multiple Virtual Machines
cd ..

#Next, let’s create the Vagrant project folder and change into that folder
mkdir multitest
cd multitest

#Initialize the Vagrant project. This step creates the Vagrantfile
vagrant init ubuntu/jammy64

#Add two virtual machine definitions.
Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu/jammy64"

	config.vm.define "test1" do |test1|
		test1.vm.hostname = "test1"
		test1.vm.network "private_network", ip: "192.168.56.101"
	end

	config.vm.define "test2" do |test2|
		test2.vm.hostname = "test2"
		test2.vm.network "private_network", ip: "192.168.56.102"
	end
end

#Start the virtual machines. (Remember, that if you do not specify a VM name all the defined VMs will be started.)
vagrant up

#Check their status with the following command
vagrant status

#Connect to the test1 virtual machine to confirm that it’s working and then exit it
vagrant ssh test1
exit

#Connect to the test2 virtual machine to confirm that it’s working
vagrant ssh test2
ping -c 3 192.168.56.101

#Stop the Virtual Machines
vagrant halt