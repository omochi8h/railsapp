class HomeController < ApplicationController
  before_action :set_current_user
  def top
    @posts = Post.all.order(created_at: :desc)    
  end
  def question
  end
end
