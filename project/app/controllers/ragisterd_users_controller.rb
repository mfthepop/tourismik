class RagisterdUsersController < ApplicationController
  before_action :set_ragisterd_user, only: [:show, :edit, :update, :destroy]

  # GET /ragisterd_users
  # GET /ragisterd_users.json
  def index
    @ragisterd_users = RagisterdUser.all
  end

  # GET /ragisterd_users/1
  # GET /ragisterd_users/1.json
  def show
  end

  # GET /ragisterd_users/new
  def new
    @ragisterd_user = RagisterdUser.new
  end

  # GET /ragisterd_users/1/edit
  def edit
  end

  # POST /ragisterd_users
  # POST /ragisterd_users.json
  def create
    @ragisterd_user = RagisterdUser.new(ragisterd_user_params)

    respond_to do |format|
      if @ragisterd_user.save
        format.html { redirect_to @ragisterd_user, notice: 'Ragisterd user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ragisterd_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @ragisterd_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ragisterd_users/1
  # PATCH/PUT /ragisterd_users/1.json
  def update
    respond_to do |format|
      if @ragisterd_user.update(ragisterd_user_params)
        format.html { redirect_to @ragisterd_user, notice: 'Ragisterd user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ragisterd_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ragisterd_users/1
  # DELETE /ragisterd_users/1.json
  def destroy
    @ragisterd_user.destroy
    respond_to do |format|
      format.html { redirect_to ragisterd_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ragisterd_user
      @ragisterd_user = RagisterdUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ragisterd_user_params
      params.require(:ragisterd_user).permit(:name)
    end
end
