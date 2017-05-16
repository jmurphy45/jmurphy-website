class HomeController < ApplicationController
  def index
    @jobs = Experience.all
    @works_recent = Portfolio.last(2)
    @works = Portfolio.last(9)
    @blogs = Blog.last(2)
    @categories = Portfolio.select('distinct(category_id)')

    @feedback = Feedback.new
  end
end
