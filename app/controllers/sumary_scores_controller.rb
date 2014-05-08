class SumaryScoresController < ApplicationController
  before_action :set_sumary_score, only: [:show, :edit, :update, :destroy]

  # GET /sumary_scores
  # GET /sumary_scores.json
  def index
    @sumary_scores = SumaryScore.all
  end

  # GET /sumary_scores/1
  # GET /sumary_scores/1.json
  def show
  end

  # GET /sumary_scores/new
  def new
    @sumary_score = SumaryScore.new
  end

  # GET /sumary_scores/1/edit
  def edit
  end

  # POST /sumary_scores
  # POST /sumary_scores.json
  def create
    @sumary_score = SumaryScore.new(sumary_score_params)

    respond_to do |format|
      if @sumary_score.save
        format.html { redirect_to @sumary_score, notice: 'Sumary score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sumary_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @sumary_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sumary_scores/1
  # PATCH/PUT /sumary_scores/1.json
  def update
    respond_to do |format|
      if @sumary_score.update(sumary_score_params)
        format.html { redirect_to @sumary_score, notice: 'Sumary score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sumary_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sumary_scores/1
  # DELETE /sumary_scores/1.json
  def destroy
    @sumary_score.destroy
    respond_to do |format|
      format.html { redirect_to sumary_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sumary_score
      @sumary_score = SumaryScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sumary_score_params
      params.require(:sumary_score).permit(:student_id, :score)
    end
end
