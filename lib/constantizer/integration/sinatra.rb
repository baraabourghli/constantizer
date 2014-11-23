module Constantizer
  # provide helper to register within your Sinatra app
  #
  # set :root, File.dirname(__FILE__)
  # register Constantizer
  #
  module Sinatra
    def self.registered(app)
      app.configure do |inner_app|
        Constantizer.load!(File.join(inner_app.root, 'constants'))

        inner_app.use(Constantizer::Rack::Reloader) if inner_app.development?
      end
    end
  end
end
