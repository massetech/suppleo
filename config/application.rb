require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Suppleo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
	# Add assets paths
    #config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.assets.paths << Rails.root.join('vendor', 'assets', 'components')
    config.assets.paths << Rails.root.join('vendor', 'assets', 'javascripts')
    config.assets.paths << Rails.root.join('vendor', 'assets', 'stylesheets')

  end
end
