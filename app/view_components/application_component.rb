# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  include ActiveModel::AttributeAssignment

  def initialize(**accessors)
    super
    assign_attributes(accessors)
  end
end
