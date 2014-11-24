require 'constantizer/version'
require 'erb'

module Constantizer

  def self.load!(path)
    @path = path
    Dir.glob(File.join(path,'/*.yml')).each { |file| YAML.load(ERB.new(IO.read(file)).result).each { |k, v| Object.const_set k.upcase, v } }
  end

  def self.reload!
    load! @path
  end
end

# add rails integration
require('constantizer/integration/rails') if defined?(::Rails)

# add sinatra integration
require('constantizer/integration/sinatra') if defined?(::Sinatra)
