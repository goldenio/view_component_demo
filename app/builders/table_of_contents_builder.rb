class TableOfContentsBuilder < ConfigBuilder
  self.config_name = 'table_of_contents'

  delegate_missing_to :configs, allow_nil: true
end
