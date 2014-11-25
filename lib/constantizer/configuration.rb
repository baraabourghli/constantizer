module Constantizer
  class Configuration
    attr_accessor :directory

    def initialize
      @directory = File.join('config', 'constants')
    end
  end
end
