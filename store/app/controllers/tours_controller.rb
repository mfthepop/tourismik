class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :edit, :update, :destroy]
   helper_method :sort_column, :sort_direction  

  # GET /tours
  # GET /tours.json
  
   #def index
  #  @tours = Tour.all
  #end
 

	def index
		@tours = Tour.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => 5, :page => params[:page])
	end

    #def index  
     # @tours = Tour.order(params[:sort])  
    #end  
 


  # GET /tours/1
  # GET /tours/1.json
  def show
  end

  # GET /tours/new
  def new
    @tour = Tour.new
    #@tour.location = Location.find params[:parent_id]

  end

  # GET /tours/1/edit
  def edit
  end

  # POST /tours
  # POST /tours.json
  def create
    #@tour = Tour.new(tour_params)
    #@tour = @parent.tours.new(tour_params)

	  @location = Location.find(params[:parent_id])
	  @tour = @location.tours.create(tour_params)


    respond_to do |format|
      if @tour.save
        format.html { redirect_to @tour, notice: 'Tour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tour }
      else
        format.html { render action: 'new' }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tours/1
  # PATCH/PUT /tours/1.json
  def update
    respond_to do |format|
      if @tour.update(tour_params)
        format.html { redirect_to @tour, notice: 'Tour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tours/1
  # DELETE /tours/1.json
  def destroy
    @tour.destroy
    respond_to do |format|
      format.html { redirect_to tours_url }
      format.json { head :no_content }
    end
  end

  private
    def sort_column  
      Tour.column_names.include?(params[:sort]) ? params[:sort] : "quorum"  
    end   
    
	def sort_direction  
		%w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"  
	end 
    # Use callbacks to share common setup or constraints between actions.
    def set_tour
      @tour = Tour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_params
      params.require(:tour).permit(:departure_date, :departure_time, :departure_location, :quorum, :registered)
    end
end
