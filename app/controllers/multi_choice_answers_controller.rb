class MultiChoiceAnswersController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /multi_choice_answers/new
  # GET /multi_choice_answers/new.xml
  def new
    @multi_choice_answer = MultiChoiceAnswer.new
    @multi_choice_question = MultiChoiceQuestion.find(params[:multi_choice_question_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @multi_choice_answer }
    end
  end

  # GET /multi_choice_answers/1/edit
  def edit
    @multi_choice_question = MultiChoiceQuestion.find(params[:multi_choice_question_id])
    @multi_choice_answer = MultiChoiceAnswer.find(params[:id])
  end

  # POST /multi_choice_answers
  # POST /multi_choice_answers.xml
  def create
    @multi_choice_answer = MultiChoiceAnswer.new(params[:multi_choice_answer])
    @multi_choice_question = MultiChoiceQuestion.find(params[:multi_choice_question_id])

    respond_to do |format|
      if @multi_choice_answer.save
        format.html { redirect_to(@multi_choice_question, :notice => 'Multi choice answer was successfully created.') }
        format.xml  { render :xml => @multi_choice_question, :status => :created, :location => @multi_choice_answer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @multi_choice_answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /multi_choice_answers/1
  # PUT /multi_choice_answers/1.xml
  def update
    @multi_choice_question = MultiChoiceQuestion.find(params[:multi_choice_question_id])
    @multi_choice_answer = MultiChoiceAnswer.find(params[:id])

    respond_to do |format|
      if @multi_choice_answer.update_attributes(params[:multi_choice_answer])
        format.html { redirect_to(@multi_choice_question, :notice => 'Multi choice answer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @multi_choice_answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /multi_choice_answers/1
  # DELETE /multi_choice_answers/1.xml
  def destroy
    @multi_choice_question = MultiChoiceQuestion.find(params[:multi_choice_question_id])
    @multi_choice_answer = MultiChoiceAnswer.find(params[:id])
       
    @multi_choice_answer.destroy

    respond_to do |format|
      format.html { redirect_to(@multi_choice_question) }
      format.xml  { head :ok }
    end
  end
end
