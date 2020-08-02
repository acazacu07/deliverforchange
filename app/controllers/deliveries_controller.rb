class DeliveriesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_delivery, only: [:show, :edit, :update, :destroy]
  before_action :must_be_admin , only: [ :edit, :update, :destroy]
  
 

  # GET /deliveries
  # GET /deliveries.json
  def index
     
    if current_user.has_role?(:admin)
      @deliveries= Delivery.all
    else
    @deliveries = current_user.deliveries.all.where(user_id: current_user)
    end
  end
  # GET /deliveries/1
  # GET /deliveries/1.json
  def show
  end

  # GET /deliveries/new
  def new
    @delivery = Delivery.new
  end

  # GET /deliveries/1/edit
  def edit
  end

  # POST /deliveries
  # POST /deliveries.json
  def create
    @delivery = Delivery.new(delivery_params)
    @delivery.user_id = current_user.id

    respond_to do |format|
      if @delivery.save
        format.html { redirect_to @delivery, notice: 'Delivery was successfully created.' }
        format.json { render :show, status: :created, location: @delivery }
        DeliveryMailer.delivery_scheduled(delivery: @delivery, user: current_user).deliver_later
      else
        format.html { render :new }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliveries/1
  # PATCH/PUT /deliveries/1.json
  def update
    respond_to do |format|
      if @delivery.update(delivery_params)
        format.html { redirect_to @delivery, notice: 'Delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery }
      else
        format.html { render :edit }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1
  # DELETE /deliveries/1.json
  def destroy
    @delivery.destroy
    respond_to do |format|
      format.html { redirect_to deliveries_url, notice: 'Delivery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.find(params[:id])
    end
    
    def set_charity
      @charity = Charity.find(params[:charity_id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_params
      params.require(:delivery).permit(:start_time, :user_id, :charity_id)
    end

    def must_be_admin
      unless current_user.has_role?(:admin)
      redirect_to deliveries_path, alert: "You don't have access to this page"
      end
    end    
 
 
end
