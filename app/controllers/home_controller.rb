class HomeController < ApplicationController
  def index
    @jobs = Experience.all
  end
end
