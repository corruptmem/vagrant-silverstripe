Silverstripe for Vagrant
========================

Prerequisites
-------------

* Vagrant (http://vagrantup.com/)
* VirtualBox
* git

Details
-------
* MySQL username is root, password is omega
* Silverstripe username is admin, password is omega

Usage
-----

In the shell:

```bash
$ # 1. Configure a precies64 box like so:
$ vagrant box add precise64 http://dl.dropbox.com/u/1537815/precise64.box
[...]
$ # 2. Check out this repo (Well, I recommend forking then cloning your fork..)
$ git clone https://github.com/corruptmem/vagrant-silverstripe.git
[...]
$ cd vagrant-silverstripe/
$ git submodule init
$ git submodule update
[...]
$ # Start her up!
$ vagrant up
[...]
$ # access your Silverstripe install
$ open http://localhost:51742/       # for site
$ open http://localhost:51742/admin  # for admin


$ # The following will reset the database to the dump in config/
$ vagrant provision
[...] 

$ # to destroy your VM, call 
$ vagrant destroy
$ # but if you only want to suspend it, either 
$ vagrant suspend   # to suspend it
$ vagrant halt      # to shut it down
$ # then, respectively, to start it back up...
$ vagrant resume
$ vagrant up
```