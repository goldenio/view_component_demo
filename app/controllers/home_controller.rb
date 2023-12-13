class HomeController < ApplicationController
  def index
    flash[:info] = 'Good day, Ruby Conf Taiwan.'
  end
end
