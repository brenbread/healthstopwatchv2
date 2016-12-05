class StopwatchesController < ApplicationController
  before_action :set_stopwatch, only: [:show, :edit, :update, :destroy]
  def index
    @my_var = 0
    gon.myNum = @my_var
  end

  def show
  end

  def new
    @stopwatch = Stopwatch.new
  end

  def edit
  end

  def create
    @stopwatch = Stopwatch.new(stopwatch_params)

    respond_to do |format|
      if @stopwatch.save
        format.html { redirect_to @stopwatch, notice: 'Stopwatch was successfully created.' }
        format.json { render :show, status: :created, location: @stopwatch }
      else
        format.html { render :new }
        format.json { render json: @stopwatch.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @stopwatch.update(stopwatch_params)
        format.html { redirect_to @stopwatch, notice: 'Stopwatch was successfully updated.' }
        format.json { render :show, status: :ok, location: @stopwatch }
      else
        format.html { render :edit }
        format.json { render json: @stopwatch.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stopwatch.destroy
    respond_to do |format|
      format.html { redirect_to stopwatches_url, notice: 'Stopwatch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stopwatch
      @stopwatch = Stopwatch.find(params[:id])
    end

  def stopwatch_params
    params.require(:stopwatch).permit(:time)
  end

end
