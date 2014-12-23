class ChallengesController < ApplicationController
  def new
    authorize! :create, Challenge
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    if @challenge.save
      redirect_to @challenge
    end
  end

  def edit
    @challenge = Challenge.where(slug: params[:id]).first
    authorize! :update, @challenge
  end

  def update
    @challenge = Challenge.where(slug: params[:id]).first
    if @challenge.update_attributes(challenge_params)
      redirect_to @challenge
    end
  end

  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.where(slug: params[:id]).first
  end

  def check_answer
    @challenge = Challenge.where(slug: params[:id]).first
    if params[:challenge_answer] == @challenge.answer
      authorize! :create, ChallengeUser
      ChallengeUser.create!(challenge_id: @challenge.id, user_id: current_user.id)
      flash[:success] = "Correct answer!"
      redirect_to challenge_answer_path(id: @challenge.slug)
    else
      flash[:error] = "Incorrect, try again"
      redirect_to @challenge
    end
  end

  def answer
    @challenge = Challenge.where(slug: params[:id]).first
  end

  private

  def challenge_params
    params.require(:challenge).permit(:question, :answer_description, :answer, :question_summary)
  end
end
