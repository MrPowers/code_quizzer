class SubjectsController < ApplicationController
  def index
    subjects = Subject.all
    @subjects = sorted_subjects(subjects)
  end

  def show
    @subject = Subject.where(slug: params[:id]).first
    @topics = @subject.topics
  end

  private

  def sorted_subjects(subjects)
    subjects.select{|s| subject_order.index(s.name)}.sort_by {|s| subject_order.index(s.name)} + subjects.reject{|s| subject_order.index(s.name)}
  end

  def subject_order
    [
      "Golang",
      "Python",
      "Ruby",
      "Bash",
      "Scala",
      "Spark",
      "JavaScript",
      "Computer Science",
      "Git",
      "Rails",
      "Challenges"
    ]
  end

end
