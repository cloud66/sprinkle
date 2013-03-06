module Sprinkle
  module Actors
    # = Dummy Delivery Method for Capistrano
    #
    class Dummy
      
			def initialize(&block) #:nodoc:
				# nop
			end
			
      def process(name, commands, roles, logger, suppress_and_return_failures = false) #:nodoc:
				return true
			end
			
      def transfer(name, source, destination, roles, recursive = true, suppress_and_return_failures = false)
				return true
			end
			
      def recipes(script)
				# nop
			end
		end
	end
end
