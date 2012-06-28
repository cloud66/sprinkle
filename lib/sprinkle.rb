require 'rubygems'
require 'active_support'

# Use active supports auto load mechanism
require 'active_support/version'
if ActiveSupport::VERSION::MAJOR > 2
  require 'active_support/dependencies'
  ActiveSupport::Dependencies.autoload_paths << File.dirname(__FILE__)
else
  ActiveSupport::Dependencies.load_paths << File.dirname(__FILE__)
end

# Configure active support to log auto-loading of dependencies
#ActiveSupport::Dependencies::RAILS_DEFAULT_LOGGER = Logger.new($stdout)
#ActiveSupport::Dependencies.log_activity = true

# Load up extensions to existing classes
Dir[File.dirname(__FILE__) + '/sprinkle/extensions/*.rb'].each { |e| require e }
# Load up the verifiers so they can register themselves
Dir[File.dirname(__FILE__) + '/sprinkle/verifiers/*.rb'].each { |e| require e }

# Configuration options
module Sprinkle
  OPTIONS = { :testing => false, :verbose => false, :force => false }
end
