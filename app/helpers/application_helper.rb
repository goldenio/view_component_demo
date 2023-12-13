module ApplicationHelper
  def update_flash
    turbo_stream.update 'turbo_flash' do
      render FlashComponent.new(flash:, action: 'show', wrapper_classes: 'flex flex-col gap-y-2 m-2 p-2')
    end
  end
end
