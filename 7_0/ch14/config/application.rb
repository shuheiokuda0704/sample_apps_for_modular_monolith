require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.load_defaults 7.0
    config.active_storage.variant_processor = :mini_magick
    config.paths.add 'packages/user', glob: '{app/*, app/*/concerns, lib}', eager_load: true
    config.paths.add 'packages/blog', glob: '{app/*, app/*/concerns, lib}', eager_load: true
  end
end
