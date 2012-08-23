module Sprinkle
  module Verifiers
    # = Executable Verifier
    #
    # Contains a verifier to check the existance of an executable
    # script on your server.
    # 
    # == Example Usage
    #
    # First, absolute path to an executable:
    #
    #   verify { has_executable '/usr/special/secret/bin/scipt' }
    #
    # Second, a global executable which would be available anywhere on the
    # command line:
    #
    #   verify { has_executable 'grep' }
    module Executable
      Sprinkle::Verify.register(Sprinkle::Verifiers::Executable)
      
      # Checks if <tt>path</tt> is an executable script. This verifier is "smart" because
      # if the path contains a forward slash '/' then it assumes you're checking an 
      # absolute path to an executable. If no '/' is in the path, it assumes you're
      # checking for a global executable that would be available anywhere on the command line.
      def has_executable(path)
        # Be smart: If the path includes a forward slash, we're checking
        # an absolute path. Otherwise, we're checking a global executable
        if path.include?('/')
          @commands << "test -x #{path}"
        else
          @commands << "[ -n \"`echo \\`which #{path}\\``\" ]"
        end
      end

      # Same as has_executable but with checking for e certain version number.
      # Last option is the parameter to append for getting the version (which
      # defaults to "-v").
      def has_executable_with_version(path, version, get_version = '-v')
        if path.include?('/')
          @commands << "[ -x #{path} -a -n \"`#{path} #{get_version} 2>&1 | grep -E -i -e \\\"#{version}\\\"`\" ]"
        else
          @commands << "[ -n \"`echo \\`which #{path}\\``\" -a -n \"`\\`which #{path}\\` #{get_version} 2>&1 | grep -E -i -e \\\"#{version}\\\"`\" ]"
        end
      end

      # Same as has_executable but with checking for e certain version number in the list of supplied versions.
      # Last option is the parameter to append for getting the version (which
      # defaults to "-v").
      def has_executable_with_versions(path, versions, get_version = '-v')
        versions_lookup = versions.join('|')
        if path.include?('/')
          @commands << "[ -x #{path} -a -n \"`#{path} #{get_version} 2>&1 | grep -E -i -e \\\"#{versions_lookup}\\\"`\" ]"
        else
          @commands << "[ -n \"`echo \\`which #{path}\\``\" -a -n \"`\\`which #{path}\\` #{get_version} 2>&1 | grep -E -i -e \\\"#{versions_lookup}\\\"`\" ]"
        end
      end

      # Same as has_executable but checking output of a certain command
      # with grep.
      def has_version_in_grep(cmd, version, sudo = true)
        if sudo
          @commands << "[ -n \"`#{cmd} 2> /dev/null | grep -E -i -e \\\"#{version}\\\"`\" ]"
        else
          @commands << "[ -n \"true; `#{cmd} 2> /dev/null | grep -E -i -e \\\"#{version}\\\"`\" ]"
        end
      end
    end
  end
end