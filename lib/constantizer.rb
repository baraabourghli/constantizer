require 'constantizer/version'
require 'constantizer/configuration'
require 'erb'

module Constantizer

  def self.load!(path)
    @path = path
    Dir.glob(File.join(path,'/*.yml')).each do |file|
      YAML.load(ERB.new(IO.read(file)).result).each do |k, v|
        Kernel.const_set k.upcase, v
      end
    end
  end

  def self.reload!
    load! @path
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end

# add rails integration
require('constantizer/integration/rails') if defined?(::Rails)

# add sinatra integration
require('constantizer/integration/sinatra') if defined?(::Sinatra)
