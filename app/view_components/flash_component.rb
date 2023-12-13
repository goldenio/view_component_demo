# frozen_string_literal: true

class FlashComponent < ApplicationComponent
  include Turbo::FramesHelper

  attr_accessor :frame, :flash, :action, :wrapper_classes

  def initialize(**accessors)
    super(**accessors)
    remove_specific_flash
  end

  def classes(type)
    [
      style_classes,
      respond_to?("#{type}_classes") ? send("#{type}_classes") : nil,
      animation_classes
    ].flatten.compact
  end

  def style_classes
    %w[rounded-md border m-0 px-4 py-2]
  end

  def error_classes
    %w[text-red-600 bg-red-100 border-red-400]
  end

  def alert_classes
    %w[text-orange-600 bg-orange-100 border-orange-400]
  end

  def notice_classes
    %w[text-yellow-600 bg-yellow-100 border-yellow-400]
  end

  def info_classes
    %w[text-blue-600 bg-blue-100 border-blue-400]
  end

  def success_classes
    %w[text-green-600 bg-green-100 border-green-400]
  end

  def animation_classes
    %w[transition-all duration-1000]
  end

  private

  def remove_specific_flash
    flash.delete(:timedout) # devise specific flash type
  end
end
