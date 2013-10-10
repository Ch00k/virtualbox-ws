Gem::Specification.new do |s|
  s.name = "virtualbox-ws"
  s.version = '0.0.1'
  s.platform = Gem::Platform::RUBY
  s.authors = ['Andriy Yurchuk']
  s.email = ['ayurchuk@minuteware.net']
  s.homepage = 'https://github.com/Ch00k/virtualbox-ws'
  s.summary = 'VirtualBox SOAP API wrapper'
  s.description = 'API wrapper that makes using VirtualBox SOAP API (relatively) easier'
  s.license = 'MIT'

  s.add_dependency 'require_all'
  s.add_dependency 'savon'

  s.files = `git ls-files`.split("\n")
  s.require_path = 'lib'
end
