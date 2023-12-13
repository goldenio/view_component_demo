# frozen_string_literal: true

class ThemePreview < Lookbook::Preview
  def buttons
    render template: 'theme/buttons'
  end
end
