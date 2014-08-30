module VBox

  CLASSES = [
      'Appliance',
      'AudioAdapter',
      'BandwidthControl',
      'BandwidthGroup',
      'BIOSSettings',
      'Console',
      'DHCPServer',
      'Directory',
      'Display',
      'EmulatedUSB',
      'Event',
      'EventListener',
      'EventSource',
      'File',
      'Framebuffer',
      'FramebufferOverlay',
      'FsObjInfo',
      'Guest',
      'GuestDirectory',
      'GuestFile',
      'GuestFsObjInfo',
      'GuestProcess',
      'GuestSession',
      'Host',
      'HostNetworkInterface',
      'HostUSBDevice',
      'HostUSBDeviceFilter',
      'HostVideoInputDevice',
      'Keyboard',
      'Machine',
      'MachineDebugger',
      'Medium',
      'MediumFormat',
      'Mouse',
      'NATEngine',
      'NATNetwork',
      'NetworkAdapter',
      'ParallelPort',
      'PCIAddress',
      'PerformanceCollector',
      'PerformanceMetric',
      'Process',
      'Progress',
      'SerialPort',
      'Session',
      'SharedFolder',
      'Snapshot',
      'StorageController',
      'SystemProperties',
      'Token',
      'USBController',
      'USBDevice',
      'USBDeviceFilter',
      'USBDeviceFilters',
      'VFSExplorer',
      'VirtualBox',
      'VirtualBoxErrorInfo',
      'VirtualSystemDescription',
      'VRDEServer',
      'VRDEServerInfo',
      'AdditionsStateChangedEvent',
      'BandwidthGroupChangedEvent',
      'CanShowWindowEvent',
      'ClipboardModeChangedEvent',
      'CPUChangedEvent',
      'CPUExecutionCapChangedEvent',
      'DragAndDropModeChangedEvent',
      'EventSourceChangedEvent',
      'ExtraDataCanChangeEvent',
      'ExtraDataChangedEvent',
      'GuestFileEvent',
      'GuestFileIOEvent',
      'GuestFileOffsetChangedEvent',
      'GuestFileReadEvent',
      'GuestFileRegisteredEvent',
      'GuestFileStateChangedEvent',
      'GuestFileWriteEvent',
      'GuestKeyboardEvent',
      'GuestMonitorChangedEvent',
      'GuestMouseEvent',
      'GuestMultiTouchEvent',
      'GuestProcessEvent',
      'GuestProcessInputNotifyEvent',
      'GuestProcessIOEvent',
      'GuestProcessOutputEvent',
      'GuestProcessRegisteredEvent',
      'GuestProcessStateChangedEvent',
      'GuestPropertyChangedEvent',
      'GuestSessionEvent',
      'GuestSessionRegisteredEvent',
      'GuestSessionStateChangedEvent',
      'GuestUserStateChangedEvent',
      'HostNameResolutionConfigurationChangeEvent',
      'HostPCIDevicePlugEvent',
      'KeyboardLedsChangedEvent',
      'MachineDataChangedEvent',
      'MachineEvent',
      'MachineRegisteredEvent',
      'MachineStateChangedEvent',
      'MediumChangedEvent',
      'MediumRegisteredEvent',
      'MouseCapabilityChangedEvent',
      'MousePointerShapeChangedEvent',
      'NATNetworkAlterEvent',
      'NATNetworkChangedEvent',
      'NATNetworkCreationDeletionEvent',
      'NATNetworkPortForwardEvent',
      'NATNetworkSettingEvent',
      'NATNetworkStartStopEvent',
      'NATRedirectEvent',
      'NetworkAdapterChangedEvent',
      'ParallelPortChangedEvent',
      'ReusableEvent',
      'RuntimeErrorEvent',
      'SerialPortChangedEvent',
      'SessionStateChangedEvent',
      'SharedFolderChangedEvent',
      'ShowWindowEvent',
      'SnapshotChangedEvent',
      'SnapshotDeletedEvent',
      'SnapshotEvent',
      'SnapshotTakenEvent',
      'StateChangedEvent',
      'StorageControllerChangedEvent',
      'StorageDeviceChangedEvent',
      'USBControllerChangedEvent',
      'USBDeviceStateChangedEvent',
      'VBoxSVCAvailabilityChangedEvent',
      'VetoEvent',
      'VideoCaptureChangedEvent',
      'VRDEServerChangedEvent',
      'VRDEServerInfoChangedEvent'
  ]

  CLASSES.each do |klass|
    VBox.const_set klass, Class.new(Base)
  end

end