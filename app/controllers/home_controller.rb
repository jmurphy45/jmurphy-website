class HomeController < ApplicationController
  def index
    @jobs = Experience.all
    @works_recent = Portfolio.last(2)
    @works = Portfolio.last(9)
    @blogs = Blog.last(2)

    @feedback = Feedback.new
  end
end
