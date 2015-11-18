require File.expand_path('../boot', __FILE__)

require "rails"

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module JuridicalContent
  class Application < Rails::Application
    
    config.assets.paths << File.join(Rails.root, 'app', 'assets', 'templates')
  
    config.time_zone = 'Brasilia'
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales','***','**', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.active_record.raise_in_transactional_callbacks = true
  end
end
