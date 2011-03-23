class MultiChoiceQuestionsController < ApplicationController
  
  before_filter :authenticate_user!

  # GET /multi_choice_questions
  # GET /multi_choice_questions.xml
  def index
    @multi_choice_questions = MultiChoiceQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @multi_choice_questions }
    end
  end

  # GET /multi_choice_questions/1
  # GET /multi_choice_questions/1.xml
  def show
    @multi_choice_question = MultiChoiceQuestion.find(params[:id])
    @answer_count = MultiChoiceAnswer.count_for_question(@multi_choice_question.id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @multi_choice_question }
    end
  end

  # GET /multi_choice_questions/new
  # GET /multi_choice_questions/new.xml
  def new
    @multi_choice_question = MultiChoiceQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @multi_choice_question }
    end
  end

  # GET /multi_choice_questions/1/edit
  def edit
    @multi_choice_question = MultiChoiceQuestion.find(params[:id])
  end

  # POST /multi_choice_questions
  # POST /multi_choice_questions.xml
  def create
    @multi_choice_question = MultiChoiceQuestion.new(params[:multi_choice_question])

    respond_to do |format|
      if @multi_choice_question.save
        format.html { redirect_to(@multi_choice_question, :notice => 'Multi choice question was successfully created.') }
        format.xml  { render :xml => @multi_choice_question, :status => :created, :location => @multi_choice_question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @multi_choice_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /multi_choice_questions/1
  # PUT /multi_choice_questions/1.xml
  def update
    @multi_choice_question = MultiChoiceQuestion.find(params[:id])

    respond_to do |format|
      if @multi_choice_question.update_attributes(params[:multi_choice_question])
        format.html { redirect_to(@multi_choice_question, :notice => 'Multi choice question was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @multi_choice_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /multi_choice_questions/1
  # DELETE /multi_choice_questions/1.xml
  def destroy
    @multi_choice_question = MultiChoiceQuestion.find(params[:id])
    @multi_choice_question.destroy

    respond_to do |format|
      format.html { redirect_to(multi_choice_questions_url) }
      format.xml  { head :ok }
    end
  end
end
