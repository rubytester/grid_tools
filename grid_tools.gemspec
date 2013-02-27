# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','grid_tools','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'grid_tools'
  s.version = GridTools::VERSION
  s.author = 'Alan Scherger'
  s.email = 'flyinprogramer@gmail.com'
  s.homepage = 'http://www.google.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'grid_tools is a simple way create and manage a selenium grid.'
# Add your other files here if you make them
  s.files = %w(
bin/grid_tools
binaries/selenium-server-standalone-2.30.0.jar
binaries/linux_64/chromedriver
binaries/mac/chromedriver
binaries/windows/IEDriverServer.exe
binaries/windows/chromedriver.exe
lib/grid_tools/version.rb
lib/grid_tools.rb
  )
  s.require_paths << 'lib'
  s.bindir = 'bin'
  s.executables << 'grid_tools'
  s.add_development_dependency('rake')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.5.0')
end
