# frozen_string_literal: true

class FlashComponentPreview < ViewComponent::Preview
  def multiple
    render FlashComponent.new(
      flash:,
      wrapper_classes: 'fixed top-10 left-10 z-50'
    )
  end

  private

  def flash
    {
      error: 'Error',
      alert: 'Alert',
      notice: 'Notice',
      info: 'Info',
      success: 'Success'
    }
  end
end
