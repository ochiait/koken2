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
    # タイムゾーンを東京(JST +9:00)に設定
    config.time_zone = 'Tokyo'
    # mail文中のリンクのdefault_urlを設定(環境変数DEFAULT_HOSTがなければ、localhost:3000）
    config.action_mailer.default_url_options = { host: ENV.fetch("DEFAULT_HOST") { "localhost:3000" }}
    # 日本語化
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.default_locale = :ja
  end

end
