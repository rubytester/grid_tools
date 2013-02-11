require 'grid_tools/version.rb'

# Add requires for other files you add to your project here, so
# you just need to require this one file in your bin file

module GridTools

 def self.windows?
   (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
 end
 def self.mac?
   (/darwin/ =~ RUBY_PLATFORM) != nil
 end
 def self.unix?
   !GridTools.windows?
 end
 def self.linux?
   GridTools.unix? and not GridTools.mac?
 end

end
