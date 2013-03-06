module Sprinkle
  module Actors
    # = Dummy Delivery Method for Capistrano
    #
    class Dummy
      
			def initialize(&block) #:nodoc:
				# nop
			end
			
      def process(name, commands, roles, logger, suppress_and_return_failures = false) #:nodoc:
				# nop
			end
			
      def transfer(name, source, destination, roles, recursive = true, suppress_and_return_failures = false)
				# nop
			end
			
      def recipes(script)
				# nop
			end
		end
	end
end
