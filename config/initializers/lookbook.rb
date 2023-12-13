# frozen_string_literal: true

if Settings.lookbook.enabled
  Rails.application.configure do
    config.lookbook.preview_paths = %w[lookbook/previews]
    config.lookbook.page_paths = %w[lookbook/docs]
    config.lookbook.ui_theme = 'green'
  end
end
