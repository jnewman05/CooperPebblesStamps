class StampsController < ApplicationController
  before_action :set_stamp, only: [:edit, :update, :destroy]

  # GET /stamps
  # GET /stamps.json
  def index
    @stamps = Stamp.all

    if @stamp.nil?
      @used_total = nil
      @mint_total = nil
      @row_total = nil
    else
      @used_total = @stamp.num_used * @stamp.scotts_used_value
      @mint_total = @stamp.num_mint * @stamp.scotts_mint_value
      @row_total = @stamp.used_total + @stamp.mint_total
    end
  end

  # GET /stamps/new
  def new
    @stamp = Stamp.new
  end

  # GET /stamps/1/edit
  def edit
  end

  # POST /stamps
  # POST /stamps.json
  def create
    @stamp = Stamp.new(stamp_params)

    respond_to do |format|
      if @stamp.save
        format.html { redirect_to(edit_stamp_path(@stamp), notice: 'Stamp was successfully created.') }
        format.json { render :index, status: :created, location: @stamp }
      else
        format.html { render :new }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stamps/1
  # PATCH/PUT /stamps/1.json
  def update
    respond_to do |format|
      if @stamp.update(stamp_params)
        format.html { redirect_to(edit_stamp_path(@stamp), notice: 'Stamp was successfully updated.') }
        format.json { render :index, status: :ok, location: @stamp }
      else
        format.html { render :edit }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stamps/1
  # DELETE /stamps/1.json
  def destroy
    @stamp.destroy
    respond_to do |format|
      format.html { redirect_to stamps_url, notice: 'Stamp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stamp
      @stamp = Stamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stamp_params
      params.require(:stamp).permit(:id, :type_id, :location_id, :grouping_id, :scott_number, :num_items, :face_value, :year_issued, :description, :location_type_name, :location_type_num, :num_used, :scotts_used_value, :num_mint, :scotts_mint_value, :total_mint_value, :date_lastr_viewed, :comments)
    end
end
