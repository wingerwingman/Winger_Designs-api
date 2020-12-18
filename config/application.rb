require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_job/railtie"
# require "active_record/railtie"
require 'action_mailer/railtie'
require "active_model/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"
config.action_mailer.smtp_settings = {
  address:              => "smtp.office365.com",
  port:                 587,
  domain:               => "wingerdesigns.com",
  user_name:            => "Rails.application.secrets.email_user_name",
  password:             => "RAils.application.secrets.email_password",
  authentication:       :login,
  enable_starttls_auto: true
}
config.action_mailer.delivery_method = :smtp
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WingerDesignsApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    # require 'rails/all'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    require "active_record/railtie"
    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = false
  end
end
