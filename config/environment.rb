# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'angryman/angryman'

# Initialize the Rails application.
AngryMan::Application.initialize!

$angryman = Angryman.new
