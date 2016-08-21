# Static Pages Controller
class StaticPagesController < ApplicationController
  def home
    render layout: 'public'
  end

  def help
  end

  def about
  end

  def contact
  end
end
