class SwgSmpsController < ApplicationController
  layout "application_control"
  before_filter :authenticate_user!
  #load_and_authorize_resource


  def get_swg_smps
    @sewages = current_user.sewages
    @sewage = @sewages.find(params[:sewage_id])
    @swg_smps = @sewage.swg_smps
  end
   
  def index
    @swg_smps = get_swg_smps
  end
   

   
  def show
    @swg_smps = get_swg_smps
    @swg_smp = @swg_smps.find(params[:id])
  end
   

   
  def new
    @sewages = current_user.sewages
    @sewage = @sewages.find(params[:sewage_id])
    @swg_smp = SwgSmp.new
    
  end
   

   
  def create
    @sewages = current_user.sewages
    @sewage = @sewages.find(params[:sewage_id])
    @swg_smp = SwgSmp.new(calculate_format(swg_smp_params))
    @swg_smp.sewage = @sewage
    if @swg_smp.save
      redirect_to sewage_swg_smps_path(@sewage) 
    else
      render :new
    end
  end
   

   
  def edit
    @swg_smps = get_swg_smps
    @swg_smp = @swg_smps.find(params[:id])
  end
   

   
  def update
    @swg_smps = get_swg_smps
    @swg_smp = @swg_smps.find(params[:id])
    if @swg_smp.update(calculate_format(swg_smp_params))
      redirect_to sewage_swg_smps_path(@sewage) 
    else
      render :edit
    end
  end
   
  def destroy
    @swg_smps = get_swg_smps
    @swg_smp = @swg_smps.find(params[:id])
    @swg_smp.destroy
    redirect_to :action => :index
  end

  private
    def swg_smp_params
      params.require(:swg_smp).permit( :smp_date, :act_ipt, :ipt_tmp, :ipt_ph, :cod_ipt, :cod_opt, :amn_ipt, :amn_opt, :tmn_ipt, :tmn_opt, :psp_ipt, :psp_opt, :rts, :level_ab, :desc, :cod_rmr, :amn_rmr, :tmn_rmr, :psp_rmr)
    end

    def calculate_format(input_params)
      output_params = input_params
      cod_rmr = (input_params[:cod_ipt].to_f - input_params[:cod_opt].to_f)/input_params[:cod_ipt].to_f*100
      amn_rmr = (input_params[:amn_ipt].to_f - input_params[:amn_opt].to_f)/input_params[:amn_ipt].to_f*100
      tmn_rmr = (input_params[:tmn_ipt].to_f - input_params[:tmn_opt].to_f)/input_params[:tmn_ipt].to_f*100
      psp_rmr = (input_params[:psp_ipt].to_f - input_params[:psp_opt].to_f)/input_params[:psp_ipt].to_f*100
      output_params[:cod_rmr] = format("%0.2f", cod_rmr).to_f 
      output_params[:amn_rmr] = format("%0.2f", amn_rmr).to_f
      output_params[:tmn_rmr] = format("%0.2f", tmn_rmr).to_f
      output_params[:psp_rmr] = format("%0.2f", psp_rmr).to_f
      output_params
    end
  
  
  
end

