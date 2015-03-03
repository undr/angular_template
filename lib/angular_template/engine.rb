require 'rails'

module AngularTemplate
  class Engine < Rails::Engine
    initializer 'angular_template.environment', after: 'sprockets.environment' do |app|
      app.assets.register_engine('.ahtml', Html)
      app.assets.register_engine('.aslim', Slim) if defined?(Slim)
    end
  end
end
