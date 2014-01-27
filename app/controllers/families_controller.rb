class FamiliesController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def create
    if @family.save
      redirect_to families_path
    else
      flash[:error] = "Something went wrong"
    end
  end

  def show
    @family = Family.find(params[:id])
    topics = @family.topics.includes(:quizzes)
    @topics = sorted_topics(topics)
    @topic = Topic.new
  end

  private

  def sorted_topics(topics)
    topics.select{|t| topic_order.index(t.name)}.sort_by {|t| topic_order.index(t.name)} + topics.reject{|t| topic_order.index(t.name)}
  end

  def topic_order
    [
      "Learn Ruby",
      "Intermediate Ruby",
      "Learn JavaScript",
      "Learn Rails",
      "Ruby",
      "Core CS",
      "CSS",
      "jQuery",
      "Git/Github",
      "HTML / CSS",
      "Unix / Bash",
      "JavaScript",
      "CoffeeScript",
      "RSpec"
    ]
  end
end
