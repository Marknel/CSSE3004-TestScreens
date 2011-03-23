class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  respond_to :html, :xml, :json

  
  def index
    if params['user']
      @searchuser = User.find(params['user']['user'])
      @searchquestions = @searchuser.questions_between_dates(params['from'], params['to'])
    end
    
    @questions = (current_user.multi_choice_questions.all + current_user.short_answer_questions.all).flatten.sort
    
    respond_with(@questions)
  end
end