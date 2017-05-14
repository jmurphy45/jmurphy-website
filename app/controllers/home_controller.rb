class HomeController < ApplicationController
  def index
    @jobs = Experience.all
    @works = Portfolio.last(9)
    @blogs = Blog.last(2)

    @feedback = Feedback.new
  end
end
