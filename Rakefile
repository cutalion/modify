require 'rubygems'  
require 'rake'  
require 'echoe'  
  
Echoe.new('modify', '0.1.2') do |p|  
  p.description     = "Modify model fields before validation"  
  p.url             = "http://github.com/cutalion/modify"  
  p.author          = "Alexander Glushkov"  
  p.email           = "cutalion@gmail.com"  
  p.ignore_pattern  = ["tmp/*", "script/*", "*.swp"]  
  p.development_dependencies = []  
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
