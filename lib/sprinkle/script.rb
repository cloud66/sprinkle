module Sprinkle
  # = Programmatically Run Sprinkle
  #
  # Sprinkle::Script gives you a way to programatically run a given
  # sprinkle script. 
  class Script
    Dir[File.dirname(__FILE__) + '/sprinkle/extensions/*.rb'].each { |e| require e }
    # Load up the verifiers so they can register themselves
    Dir[File.dirname(__FILE__) + '/sprinkle/verifiers/*.rb'].each { |e| require e }

    include Sprinkle::Package
    include Sprinkle::Deployment
    include Sprinkle::Policy

    # Run a given sprinkle script. This method is <b>blocking</b> so
    # it will not return until the sprinkling is complete or fails.
    #--
    # FIXME: Improve documentation, possibly notify user how to tell
    # if a sprinkling failed.
    #++
    def self.sprinkle(script, logger, filename = '__SCRIPT__')
      @logger = logger
      powder = new
      powder.instance_eval script, filename
      powder.sprinkle(logger)
    end

    def sprinkle(logger) #:nodoc:
      @deployment.process(logger) if @deployment
    end

  end
end
