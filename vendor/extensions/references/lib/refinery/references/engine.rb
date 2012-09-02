require 'refinerycms-formtastic'

module Refinery
  module References
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::References

      engine_name :refinery_references

      initializer "register refinerycms_references plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "references"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.references_admin_references_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/references/reference'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::References)
      end
    end
  end
end
