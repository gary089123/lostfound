class LostfoundsController < ApplicationController
  before_action :authenticate_user! , :only => [:new, :create, :update, :destroy , :edit]
  before_action :set_lostfound, only: [:show, :edit, :update, :destroy]


  # GET /lostfounds
  # GET /lostfounds.json
  def index
    if params[:search]
            @lostfounds= Lostfound.where('name LIKE ? OR detail LIKE?', "%#{params[:search]}%", "%#{params[:search]}%")
    else
            @lostfounds = Lostfound.all
    end
  end

  # GET /lostfounds/1
  # GET /lostfounds/1.json
  def show
  end

  # GET /lostfounds/new
  def new
    @lostfound = Lostfound.new
  end

  # GET /lostfounds/1/edit
  def edit
  end

  # POST /lostfounds
  # POST /lostfounds.json
  def create
    @lostfound = Lostfound.new(lostfound_params)

    respond_to do |format|
      if @lostfound.save
        format.html { redirect_to @lostfound, notice: 'Lostfound was successfully created.' }
        format.json { render :show, status: :created, location: @lostfound }
      else
        format.html { render :new }
        format.json { render json: @lostfound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lostfounds/1
  # PATCH/PUT /lostfounds/1.json
  def update
    respond_to do |format|
      if @lostfound.update(lostfound_params)
        format.html { redirect_to @lostfound, notice: 'Lostfound was successfully updated.' }
        format.json { render :show, status: :ok, location: @lostfound }
      else
        format.html { render :edit }
        format.json { render json: @lostfound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lostfounds/1
  # DELETE /lostfounds/1.json
  def destroy
    @lostfound.destroy
    respond_to do |format|
      format.html { redirect_to lostfounds_url, notice: 'Lostfound was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lostfound
      @lostfound = Lostfound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lostfound_params
      params.require(:lostfound).permit(:name ,:image , :detail , :category)
    end

end
