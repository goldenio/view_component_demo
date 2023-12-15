module Navigation
  class TableOfContentsComponentPreview < ViewComponent::Preview
    # 目錄
    # @param name [String] "資料集"
    # @param active_text [String] "目前項目"
    def default(name: 'news', active_text: '招生')
      render Navigation::TableOfContentsComponent.new(
        name:,
        active_text:,
        wrapper_classes: 'm-2 p-2 w-28 rounded border border-slate-400'
      )
    end
  end
end
