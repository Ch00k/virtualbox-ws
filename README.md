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