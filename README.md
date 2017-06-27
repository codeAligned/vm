# CS 186 Virtual Machine

## Getting Started
1. Install [vagrant](https://www.vagrantup.com/downloads.html) and
   [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
2. Run `vagrant up` to boot the VM. Note that it will take a very long time to
   boot the VM for the first time. Subsequent boots will be much faster.
3. In the same terminal where you ran `vagrant up`, run `vagrant ssh` to ssh
   into the VM. Alternatively, log into the VM from the GUI that was launched.
   The username and password are both `vagrant`.
4. Power off the VM by running `vagrant halt`. Reboot the VM with `vagrant up`.
