class ShortAnswerKeywordsController < ApplicationController
  # GET /short_answer_keywords
  # GET /short_answer_keywords.xml
  def index
    @short_answer_keywords = ShortAnswerKeyword.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @short_answer_keywords }
    end
  end

  # GET /short_answer_keywords/1
  # GET /short_answer_keywords/1.xml
  def show
    @short_answer_keyword = ShortAnswerKeyword.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @short_answer_keyword }
    end
  end

  # GET /short_answer_keywords/new
  # GET /short_answer_keywords/new.xml
  def new
    @short_answer_keyword = ShortAnswerKeyword.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @short_answer_keyword }
    end
  end

  # GET /short_answer_keywords/1/edit
  def edit
    @short_answer_keyword = ShortAnswerKeyword.find(params[:id])
  end

  # POST /short_answer_keywords
  # POST /short_answer_keywords.xml
  def create
    @short_answer_keyword = ShortAnswerKeyword.new(params[:short_answer_keyword])

    respond_to do |format|
      if @short_answer_keyword.save
        format.html { redirect_to(session[:short_answer_question], :notice => 'Short answer keyword was successfully created.') }
        format.xml  { render :xml => @short_answer_keyword, :status => :created, :location => @short_answer_keyword }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @short_answer_keyword.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /short_answer_keywords/1
  # PUT /short_answer_keywords/1.xml
  def update
    @short_answer_keyword = ShortAnswerKeyword.find(params[:id])

    respond_to do |format|
      if @short_answer_keyword.update_attributes(params[:short_answer_keyword])
        format.html { redirect_to(session[:short_answer_question], :notice => 'Short answer keyword was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @short_answer_keyword.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /short_answer_keywords/1
  # DELETE /short_answer_keywords/1.xml
  def destroy
    @short_answer_keyword = ShortAnswerKeyword.find(params[:id])
    @short_answer_keyword.destroy

    respond_to do |format|
      format.html { redirect_to(short_answer_keywords_url) }
      format.xml  { head :ok }
    end
  end
end
