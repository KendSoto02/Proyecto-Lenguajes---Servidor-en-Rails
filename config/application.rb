require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module AppComercial
  class Application < Rails::Application
    config.load_defaults 5.2

<<<<<<< HEAD
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: :any
      end
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
=======
>>>>>>> origin/feature/BGV-C03471
    config.assets.initialize_on_precompile = false
    I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{yml}')]
    I18n.default_locale = :es
  end
end
