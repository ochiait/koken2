require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Koken2
  class Application < Rails::Application
    config.generators do |g|
      g.assets false		# css, jsは生成しない
      g.helper false		# helperは生成しない
      g.test_framework :rspec,		# テストフレームワークはrspec
        fixture: true,
        fixture_replacement: :factory_girl,		# fixtureはFactoryGirl
        view_specs: false,		# view, routing, helper, integrationテストは生成しない
        routing_specs: false,
        helper_specs: false,
        integration_tool: false,
        controller_specs: true		# コントローラーのテストは生成
    end
  end
end
