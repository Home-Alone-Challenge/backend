require_relative 'boot'

require 'rails/all'
Bundler.require(*Rails.groups)

module HomealoneBackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.api_only = true
    config.load_defaults 5.2
    config.generators do |g|
     g.orm :active_record, primary_key_type: :uuid
    end


    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource(
          '*',
          headers: :any,
          methods: [:get, :patch, :put, :delete, :post, :options]
          )
      end
    end
  end
end
