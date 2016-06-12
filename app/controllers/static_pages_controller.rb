class StaticPagesController < ApplicationController
  layout "article"

  def how_to_learn_ruby
    @title = "How to learn Ruby"
  end

  def about
  end
end
