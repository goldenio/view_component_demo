module Navigation
  class TableOfContentsComponent < ApplicationComponent
    attr_accessor :name, :active_text, :wrapper_classes

    attr_writer :builder

    def items
      builder.send(name)
    end

    def active_classes(item_text)
      return unless item_text == active_text

      'rounded-md bg-[#FFDE12] px-[14px] py-[6px]'
    end

    private

    def builder
      @builder ||= TableOfContentsBuilder.new
    end
  end
end
