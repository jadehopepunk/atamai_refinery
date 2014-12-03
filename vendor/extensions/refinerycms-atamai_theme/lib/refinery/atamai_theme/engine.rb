module Refinery
  module AtamaiTheme
    class Engine < Rails::Engine
      initializer "register refinerycms_atamai_theme plugin" do |app|
        Refinery::AtamaiTheme.setup do |config|
          config.app_root = app.root
        end
      end
    end
  end
end
