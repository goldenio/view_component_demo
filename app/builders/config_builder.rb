class ConfigBuilder
  class << self
    def config_with(name)
      new(configs: load_config(name))
    end

    def load_config(name)
      Config.load_files(yaml_path_of(name))
    end

    def yaml_path_of(name)
      Rails.root.join("config/settings/#{name}.yml")
    end
  end

  include ActiveModel::AttributeAssignment

  class_attribute :config_name

  attr_writer :configs

  def initialize(**accessors)
    assign_attributes(accessors)
  end

  def cache_key
    [self.class.name, updated_at&.to_fs(:usec)].join('/')
  end

  def updated_at
    config_file&.mtime&.utc
  end

  private

  def config_file
    @config_file ||= self.class.yaml_path_of(config_name)
  end

  def configs
    @configs ||= Config.load_files(config_file)
  end
end
