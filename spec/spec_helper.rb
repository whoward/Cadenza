require File.expand_path(File.join("..", "lib", "cadenza"), File.dirname(__FILE__))

Dir.glob(File.expand_path(File.join('support','*.rb'), File.dirname(__FILE__))).each do |support_file|
  require support_file
end
