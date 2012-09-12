module Sprinkle
  module Verifiers
    # = Git Verifier
    #
    # Contains a verifier to ensure git access exists.
    # 
    # == Example Usage
    #
    #   verify { has_access 'git@git....' }
    
    module Git
      Sprinkle::Verify.register(Sprinkle::Verifiers::Git)
      
      # Same as has_executable but checking output of a certain command
      # with grep.
      def has_access(git_repository)
        @commands << "[ -n \"git ls-remote #{git_repository}\" ]"
      end
    end
  end
end