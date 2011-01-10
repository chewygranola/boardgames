class GameScoresController < ApplicationController
  # GET /game_scores
  # GET /game_scores.xml
  def index
    @game_scores = GameScore.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @game_scores }
    end
  end

  # GET /game_scores/1
  # GET /game_scores/1.xml
  def show
    @game_score = GameScore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @game_score }
    end
  end

  # GET /game_scores/new
  # GET /game_scores/new.xml
  def new
    @game_score = GameScore.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @game_score }
    end
  end

  # GET /game_scores/1/edit
  def edit
    @game_score = GameScore.find(params[:id])
  end

  # POST /game_scores
  # POST /game_scores.xml
  def create
    @game_score = GameScore.new(params[:game_score])

    respond_to do |format|
      if @game_score.save
        format.html { redirect_to(@game_score, :notice => 'Game score was successfully created.') }
        format.xml  { render :xml => @game_score, :status => :created, :location => @game_score }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @game_score.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /game_scores/1
  # PUT /game_scores/1.xml
  def update
    @game_score = GameScore.find(params[:id])

    respond_to do |format|
      if @game_score.update_attributes(params[:game_score])
        format.html { redirect_to(@game_score, :notice => 'Game score was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @game_score.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /game_scores/1
  # DELETE /game_scores/1.xml
  def destroy
    @game_score = GameScore.find(params[:id])
    @game_score.destroy

    respond_to do |format|
      format.html { redirect_to(game_scores_url) }
      format.xml  { head :ok }
    end
  end
end
