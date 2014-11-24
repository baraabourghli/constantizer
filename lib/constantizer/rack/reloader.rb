module Constantizer
  module Rack
    # rack middleware the reloads Constantizer on every request (only use in dev mode)
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
