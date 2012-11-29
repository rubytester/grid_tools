# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','grid_tools','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'grid_tools'
  s.version = GridTools::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/grid_tools
binaries/selenium-server-standalone-2.26.0.jar
binaries/linux_64/chromedriver
binaries/mac/chromedriver
binaries/windows/IEDriverServer.exe
binaries/windows/chromedriver.exe
lib/grid_tools/version.rb
lib/grid_tools.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','grid_tools.rdoc']
  s.rdoc_options << '--title' << 'grid_tools' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'grid_tools'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.5.0')
end
