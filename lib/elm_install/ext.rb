# Extensions for the semvese module
module Semverse
  # Added utility functions
  class Version
    # Returns the simple string representation of a version
    #
    # @return [String]
    def to_simple
      "#{major}.#{minor}.#{patch}"
    end

    # Tries to parse a version, falling back to nil if fails.
    #
    # @param version [String] The version to parse
    #
    # @return [Semverse::Version]
    def self.try_new(version)
      new version
    rescue
      nil
    end
  end
end
