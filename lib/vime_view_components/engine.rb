# frozen_string_literal: true

module VimeViewComponents
  class Engine < ::Rails::Engine
    config.autoload_once_paths = %W( #{root}/app/components )

    initializer "vime_view_components" do |app|
    end
  end
end
