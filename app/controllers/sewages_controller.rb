class SewagesController < ApplicationController
  layout "application_control"
  before_filter :authenticate_user!
  #load_and_authorize_resource

   
  def index
    @sewages = current_user.sewages
  end
   

   
  def show
    @sewage = current_user.sewages.find(params[:id])
  end
   

   
  def new
    @sewage = Sewage.new
    
  end
   

   
  def create
    @sewage = Sewage.new(sewage_params)
    @sewage.user = current_user
    if @sewage.save
      redirect_to @sewage
    else
      render :new
    end
  end
   

   
  def edit
    @sewage = current_user.sewages.find(params[:id])
  end
   

   
  def update
    @sewage = current_user.sewages.find(params[:id])
    if @sewage.update(sewage_params)
      redirect_to sewage_path(@sewage) 
    else
      render :edit
    end
  end
   

   
  def destroy
    @sewage = current_user.sewages.find(params[:id])
    @sewage.destroy
    redirect_to :action => :index
  end
   

  

  

  private
    def sewage_params
      params.require(:sewage).permit( :name)
    end
  
  
  
end

