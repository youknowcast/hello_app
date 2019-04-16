require_relative 'boot'

require 'rails/all'
require 'yaml'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HelloApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    conf = YAML.load_file(Rails.root.join(".myconfig"))
    p conf["myconfig"]["whitelisted_ips"]
    unless Rails.env.production?
      config.web_console.whitelisted_ips = conf["myconfig"]["whitelisted_ips"]
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
