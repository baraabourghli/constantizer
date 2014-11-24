module Constantizer
  module Integration
    module Rails
      if defined?(::Rails::Railtie)
        class Railtie < ::Rails::Railtie
          # load options after the application initializers are run
          config.after_initialize do
            ::Constantizer.load!(::Rails.root.join('config', 'constants'))
          end

          # rails dev environment should reload the options on every request
          if ::Rails.env.development?
            initializer :rails_config_reload_on_development do
              ActionController::Base.class_eval do
                prepend_before_filter { ::Constantizer.reload! }
              end
            end
          end
        end
      end
    end
  end
end
