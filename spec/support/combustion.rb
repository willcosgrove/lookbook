Combustion.path = "spec/dummy"
Combustion.initialize! :action_controller, :action_view do
  config.autoloader = :zeitwerk

  ActiveSupport::Deprecation.silenced = true
  ActiveSupport::Dependencies.autoload_paths << "#{root}/app"

  config.view_component.view_component_path = "app/components"
  config.view_component.preview_paths << "test/components/previews"

  config.lookbook.project_name = "Lookbook Test App"
  config.lookbook.listen = false

  # config.autoload_paths << "#{root}/app"

  config.action_controller.default_url_options = {host: "localhost"}

  Lookbook.add_tag(:customtag)
end
