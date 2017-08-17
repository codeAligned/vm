# CS 186 Virtual Machine

## Getting Started (Students)
- Get the virtual machine:
    - Install the latest version of
      [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
    - Download the [virtual machine image](TODO).
- Import the virtual machine:
    - Run VirtualBox.
    - Select **File > Import Appliance**. Click on the folder icon and select
      the `.ova` virtual machine image that you just downloaded.
    - Press **Continue** and then **Import**.
- Run the virtual machine:
    - Run VirtualBox.
    - Click on the **cs186-2017fa** virtual machine and press **Start**.
    - A new window should open and you should be prompted with a terminal to
      log in. The username and password are both **vagrant**.
- Close the virtual machine:
    - Close the virtual machine window and select **Send the shutdown signal**.
      Do **not** select "Power off the machine".

The virtual machine is running Ubuntu 14.04 with the Xfce desktop environment.
The virtual machine ships with Java 8 (installed in `~/jdk1.8.0_131`), Eclipse
Neon (installed in `~/eclipse`), and the community version of IntelliJ IDEA
(installed in `idea-IC-172.3757.52`). You can write code in the virtual machine
(recommended) or on your local machine (not recommended), but **all code will
be tested in the VM**.

If you do prefer to develop on your local machine, we recommend you set up
[VirtualBox shared
folders](https://www.virtualbox.org/manual/ch04.html#sharedfolders). If you
want to develop in the VM but would prefer to use the command line instead of
the GUI, we recommend you use
[vagrant](https://github.com/berkeley-cs186/vm#getting-started-staff).

## Getting Started (Staff)
1. Install [vagrant](https://www.vagrantup.com/downloads.html) and
   [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
2. Run `vagrant up` to boot the VM. Note that it will take a very long time to
   boot the VM for the first time. Subsequent boots will be much faster.
3. In the same terminal where you ran `vagrant up`, run `vagrant ssh` to ssh
   into the VM. Alternatively, log into the VM from the GUI that was launched.
   The username and password are both `vagrant`.
4. Power off the VM by running `vagrant halt`. Reboot the VM with `vagrant up`.

## Exporting a VM Image
1. Run `vagrant up` to boot the VM.
2. Log into the VM from the GUI that was launched. The username and password
   are both `vagrant`.
3. When prompted, select the default menu bar.
4. Click **Applications Menu > Settings > Desktop**. Click **folder** and
   select **vagrant**. Click on the appropriate background and then hit close.
5. `vagrant halt` the machine.
6. Select the machine in VirtualBox and select **File > Export Appliance**.
