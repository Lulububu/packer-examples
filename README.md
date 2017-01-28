#packer-examples


* basic-centos6
Simple example provisioning a CentOS 6 virtual machine using Oracle VirtualBox as the container.



Packer is a tool that can be used to create virtual machine (VM) images compatible with a number of technologies including Amazon EC2, Docker, VirtualBox, VMware, and others.  It's open source and runs on all major operating systems.  

From a single JSON configuration file Packer can build (in parallel) multiple identical images that deploy to the specified VM providers.  This ability to quickly create virtual machines that are identical across platforms can be very useful for maintaining development environments in a clean and consistent manner.  It can also help with the creation of immutable infrastructure and is great for investigating new technologies in a throw-away environment.

Using Packer it's a straightforward process to take an operating system ISO, install it on a freshly created VM, and package the result as a machine image.  Provisioning tools like Ansible, Chef, and Puppet are supported, which allows existing configuration code to be re-used and ensures that the majority of the configuration is not expressed in a format specific to Packer. This first-class support for provisioning tools along with Packer's configuration driven approach makes the creation of VMs an automated, robust and repeatable process.  

In addition to the creation of VM images Packer also provides a number of post-processors that allow additional functionality to be applied to the images that are produced.  For example:
Converting an image into a Vagrant box
Pushing Docker images to a Docker registry
Compressing an image using gzip
The remainder of this post will demonstrate some of the key aspects of using Packer by showing how to provision a basic Linux machine in VirtualBox.
Prerequisites for building the VM

The code that supports this post can be obtained from this GitHub repository.  

> git clone https://github.com/gordonw/packer-examples.git
> cd packer-examples/basic-centos6

To build the machine you will need to install Oracle VirtualBox and Packer.  In both cases installation is straightforward and there are instructions available on the relevant websites.

Although Packer includes support for creating Vagrant boxes, Vagrant is not a prerequisite for using Packer.
