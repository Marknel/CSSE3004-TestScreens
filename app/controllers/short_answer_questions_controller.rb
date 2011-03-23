class ShortAnswerQuestionsController < ApplicationController
  # GET /short_answer_questions
  # GET /short_answer_questions.xml
  def index
    @short_answer_questions = ShortAnswerQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @short_answer_questions }
    end
  end

  # GET /short_answer_questions/1
  # GET /short_answer_questions/1.xml
  def show
    @short_answer_question = ShortAnswerQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @short_answer_question }
    end
  end

  # GET /short_answer_questions/new
  # GET /short_answer_questions/new.xml
  def new
    @short_answer_question = ShortAnswerQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @short_answer_question }
    end
  end

  # GET /short_answer_questions/1/edit
  def edit
    @short_answer_question = ShortAnswerQuestion.find(params[:id])
  end

  # POST /short_answer_questions
  # POST /short_answer_questions.xml
  def create
    @short_answer_question = ShortAnswerQuestion.new(params[:short_answer_question])

    respond_to do |format|
      if @short_answer_question.save
        format.html { redirect_to(@short_answer_question, :notice => 'Short answer question was successfully created.') }
        format.xml  { render :xml => @short_answer_question, :status => :created, :location => @short_answer_question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @short_answer_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /short_answer_questions/1
  # PUT /short_answer_questions/1.xml
  def update
    @short_answer_question = ShortAnswerQuestion.find(params[:id])

    respond_to do |format|
      if @short_answer_question.update_attributes(params[:short_answer_question])
        format.html { redirect_to(@short_answer_question, :notice => 'Short answer question was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @short_answer_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /short_answer_questions/1
  # DELETE /short_answer_questions/1.xml
  def destroy
    @short_answer_question = ShortAnswerQuestion.find(params[:id])
    @short_answer_question.destroy

    respond_to do |format|
      format.html { redirect_to(short_answer_questions_url) }
      format.xml  { head :ok }
    end
  end
end
