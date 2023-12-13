# frozen_string_literal: true

Rails.application.configure do
  config.view_component.view_component_path = 'app/view_components'
  config.view_component.default_preview_layout = 'lookbook'
  config.view_component.preview_paths << 'lookbook/previews'
end
