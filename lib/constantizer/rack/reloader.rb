module Constantizer
  module Rack
    # Rack middleware the reloads RailsConfig on every request (only use in dev mode)
    class Reloader
      def initialize(app)
        @app = app
      end

      def call(env)
        Constantizer.reload!
        @app.call(env)
      end
    end
  end
end