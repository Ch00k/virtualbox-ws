This library is an attempt to create an object-oriented wrapper in Ruby for VirtualBox SOAP Web Service.
This library's interface basically resembles the COM interface provided by VirtualBox and described in
[VirtualBox SDK Reference](http://download.virtualbox.org/virtualbox/SDKRef.pdf) with some exceptions:

1. All classes have the leading 'I' removed so `IGuestSession` becomes `GuestSession`
2. All methods' and attributes' names are converted from camel case to underscore so `addStorageController` becomes
`add_storage_controller`
3. Interfaces and methods that are marked as not supported in the webservice in VirtualBox SDK Reference are not
supported here
4. WebsessionManager class is used to both connect to VirtualBox SOAP web service and to authenticate on it


Documentation
-------------

The main source of documentation is the [VirtualBox SDK Reference](http://download.virtualbox.org/virtualbox/SDKRef.pdf)


Installation
-------

```
gem install virtualbox-ws
```


Configuration
-------------

You can override any of these configuration defaults:

```
VBox::WebService.configure do |config|
  config.vboxweb_host = ENV['VBOXWEB_HOST'] || '127.0.0.1'
  config.vboxweb_port = ENV['VBOXWEB_PORT'] || '18083'
  config.vboxweb_user = ENV['VBOXWEB_USER']
  config.vboxweb_pass = ENV['VBOXWEB_PASS']
  config.log_level = ENV['VBOXWEB_LOGGING'] || 'ERROR'
end
```
Each of these configuration options can be set as environment variables.

`config.log_level` can be one of `ERROR`, `INFO`, `DEBUG`


Usage
-----

Require the gem

```
irb> require 'virtualbox-ws'
 => true 
```

An instance of VBox::WebsessionManager connects to VirtualBox SOAP wen service

```
irb> web_session = VBox::WebsessionManager.new
 => #<VBox::WebsessionManager:0x00000005deb4a8 @ref=nil>
```

The logon method will authenticate you on the web service and create an instance of the VirtualBox class
which according to VirtualBox SDK Reference is "the main interface exposed by the product that provides virtual machine
management".

```
irb> virtual_box = web_session.logon
 => #<VBox::VirtualBox:0x000000062bc8d8 @ref="47efe040fcc25df7-000000000000001d"> 
```

Having a VirtualBox instance we can query various VirtualBox installation info as well as create virtual machines...

```
irb> virtual_box.version
 => "4.3.0"
irb> machine = virtual_box.create_machine(:name => 'machine_1')
 => #<VBox::Machine:0x00000005841f98 @ref="47efe040fcc25df7-000000000000001e"> 
irb> virtual_box.register_machine(:machine => machine)
 => nil     
2.0.0p247 :013 > machine.memory_size
 => "128" 
2.0.0p247 :014 > machine.cpu_count
 => "1"
```

...and run virtual machines

```
irb> machine.launch_vm_process(:session => web_session.get_session_object)
 => #<VBox::Progress:0x00000005934040 @ref="47efe040fcc25df7-000000000000001f"> 
```

Example
-------

This is an example of creating a VM that is ready for Ubuntu x64 to be installed on it

```ruby
require 'virtualbox-ws'

# Connect to the web service and logon
# Get session object for future use
web_session = VBox::WebsessionManager.new
virtual_box = web_session.logon
session = web_session.get_session_object

# Create an Ubuntu x64 VM
machine = virtual_box.create_machine(:name => 'machine_1112678', :os_type_id => 'Ubuntu_64')
virtual_box.register_machine(:machine => machine)

# Create a 50GB hard disk
hard_disk = virtual_box.create_hard_disk(:format => 'vdi', :location => machine.settings_file_path.gsub('vbox', 'vdi'))
hard_disk.create_base_storage(:logical_size => 50000000000)

# Lock the VM for editing and obtain a mutable instance
machine.lock_machine(:session => session)
mutable = session.machine

# Set some common properties
mutable.cpu_count = 4
mutable.memory_size = 1024
mutable.rtc_use_utc = true
mutable.vram_size = 16
mutable.accelerate_3d_enabled = true
mutable.audio_adapter.enabled = true

# Add the hard disk
mutable.add_storage_controller(:name => 'SATA1', :connection_type => 'SATA')
mutable.attach_device(:name => 'SATA1', :type => 'HardDisk', :medium => hard_disk)

# Add an ISO image
mutable.add_storage_controller(:name => 'IDE1', :connection_type => 'IDE')
iso = virtual_box.open_medium(:location => '/home/ay/Downloads/ubuntu-12.04.3-server-amd64.iso', :device_type => 'DVD')
mutable.attach_device(:name => 'IDE1', :type => 'DVD', :medium => iso)

# Set network adapter to bridged interface
network_adapter = mutable.get_network_adapter(:slot => 0)
network_adapter.attachment_type = 'Bridged'

# Enable USB
mutable.add_usb_controller(:name => 'USB1', :type => 'OHCI')
mutable.add_usb_controller(:name => 'USB2', :type => 'EHCI')

# Save changes and unlock the VM
mutable.save_settings
session.unlock_machine

# Start the VM
machine.launch_vm_process(:session => session)
```