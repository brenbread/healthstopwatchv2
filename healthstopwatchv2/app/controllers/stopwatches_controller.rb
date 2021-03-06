class StopwatchesController < ApplicationController
  before_action :set_stopwatch, only: [:show, :edit, :update, :destroy]

  # GET /stopwatches
  # GET /stopwatches.json
  def index
  @medicines = Medicine.all
   @string1 = "Hydromorphine 2 mg"
   @string2 = "Oxycodone 5 mg"
   @string3 = "Tramadol 50 mg"
   @time_1 = 0
   @time_2 = 0
   @time_3 = 0
   gon.myNum1 = @time_1
   gon.myNum2 = @time_2
   gon.myNum3 = @time_3
 end

 def change_watch1
   @string1 = "Watch Changed"

 end

 def change_watch2
 end

 def change_watch3
 end



  # GET /stopwatches/1
  # GET /stopwatches/1.json
  def show
  end

  # GET /stopwatches/new
  def new
    @stopwatch = Stopwatch.new
  end

  # GET /stopwatches/1/edit
  def edit
  end

  # POST /stopwatches
  # POST /stopwatches.json
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

  # PATCH/PUT /stopwatches/1
  # PATCH/PUT /stopwatches/1.json
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

  # DELETE /stopwatches/1
  # DELETE /stopwatches/1.json
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def stopwatch_params
      params.require(:stopwatch).permit(:medicine, :time)
    end
end
