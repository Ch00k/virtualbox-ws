This library is an attempt to create an object-oriented wrapper in Ruby for VirtualBox SOAP Web Service.
This library's interface basically resembles the COM interface provided by VirtualBox and described in
[VirtualBox SDK Reference](http://download.virtualbox.org/virtualbox/SDKRef.pdf) with some exceptions:

1. All classes have the leading 'I' removed so `IGuestSession` becomes `GuestSession`
2. All methods' and attributes' names are converted from camel case to underscore so `addStorageController` becomes
`add_storage_controller`
3. Interfaces and methods that are marked as not supported in the webservice in VirtualBox SDK Reference are not
supported here

Documentation
-------------

The main source of documentation is the [VirtualBox SDK Reference](http://download.virtualbox.org/virtualbox/SDKRef.pdf)


Usage
-----

Require the gem
```
irb> require 'virtualbox-ws'
 => true 
```

First connect to vboxwebsrv service
```
irb> VBox::WebService.connect
 => true
```

By default it connects to `http://127.0.0.1:18083` but host and port parameters can be passed to the connect method
explicitly
```
irb> VBox::WebService.connect(:host => 'localhost', :port => '18083')
 => true
```

To enable debug logging for SOAP operations a debug flag can be set for connection
```
irb > VBox::WebService.connect(:debug => true)
D, [2013-10-08T18:52:22.839743 #18132] DEBUG -- : HTTPI GET request to localhost (net_http)
 => true 
```
To do anything useful on a VirtualBox installation you first have to create an instance of the VirtualBox class which
according to VirtualBox SDK Reference is "the main interface exposed by the product that provides virtual machine
management". VirtualBox instance is created upon logging on to the SOAP web service
```
irb> web_session = VBox::WebsessionManager.new
 => #<VBox::WebsessionManager:0x00000005deb4a8 @ref=nil> 
irb> virtual_box = web_session.logon(:username => 'user', :password => 'password')
 => #<VBox::VirtualBox:0x000000062bc8d8 @ref="47efe040fcc25df7-000000000000001d"> 

```

Having a VirtualBox instance we can query various VirtualBox installation info as well as create virtual machines...
```
irb> virtual_box.version
 => "4.2.18" 
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
irb> machine.launch_vm_process(:session => web_session.get_session_object, :type => 'headless')
 => #<VBox::Progress:0x00000005934040 @ref="47efe040fcc25df7-000000000000001f"> 
```