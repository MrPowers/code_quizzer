class FamiliesController < ApplicationController
  def show
    @family = Family.find(params[:id])
    authorize! :show, @family
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
      "Rails TDD",
      "Learn SQL with Rails 4",
      "Learn Rails 3",
      "Advanced Ruby",
      "Ruby",
      "Core CS",
      "CSS",
      "jQuery",
      "Git/Github",
      "Unix / Bash"
    ]
  end
end
