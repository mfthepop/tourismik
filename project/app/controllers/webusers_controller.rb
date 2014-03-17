class WebusersController < ApplicationController
  before_action :set_webuser, only: [:show, :edit, :update, :destroy]

  # GET /webusers
  # GET /webusers.json
  def index
    @webusers = Webuser.all
  end

  # GET /webusers/1
  # GET /webusers/1.json
  def show
  end

  # GET /webusers/new
  def new
    @webuser = Webuser.new
  end

  # GET /webusers/1/edit
  def edit
  end

  # POST /webusers
  # POST /webusers.json
  def create
    @webuser = Webuser.new(webuser_params)

    respond_to do |format|
      if @webuser.save
        format.html { redirect_to @webuser, notice: 'Webuser was successfully created.' }
        format.json { render action: 'show', status: :created, location: @webuser }
      else
        format.html { render action: 'new' }
        format.json { render json: @webuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webusers/1
  # PATCH/PUT /webusers/1.json
  def update
    respond_to do |format|
      if @webuser.update(webuser_params)
        format.html { redirect_to @webuser, notice: 'Webuser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @webuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webusers/1
  # DELETE /webusers/1.json
  def destroy
    @webuser.destroy
    respond_to do |format|
      format.html { redirect_to webusers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webuser
      @webuser = Webuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webuser_params
      params.require(:webuser).permit(:user_id, :ip)
    end
end
