require 'rack'
 
# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_first_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em><h1>Hello world, its me Solomon.</h1></em>']]
end
 
run my_first_server