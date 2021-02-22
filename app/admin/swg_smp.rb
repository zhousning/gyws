ActiveAdmin.register SwgSmp  do

  permit_params  :smp_date, :act_ipt, :ipt_tmp, :ipt_ph, :cod_ipt, :cod_opt, :cod_rmr, :amn_ipt, :amn_opt, :amn_rmr, :tmn_ipt, :tmn_opt, :tmn_rmr, :rts, :level_ab, :desc

  menu label: Setting.swg_smps.label
  config.per_page = 20
  config.sort_order = "id_asc"

  
  filter :smp_date, :label => Setting.swg_smps.smp_date
  filter :act_ipt, :label => Setting.swg_smps.act_ipt
  filter :ipt_tmp, :label => Setting.swg_smps.ipt_tmp
  filter :ipt_ph, :label => Setting.swg_smps.ipt_ph
  filter :cod_ipt, :label => Setting.swg_smps.cod_ipt
  filter :cod_opt, :label => Setting.swg_smps.cod_opt
  filter :cod_rmr, :label => Setting.swg_smps.cod_rmr
  filter :amn_ipt, :label => Setting.swg_smps.amn_ipt
  filter :amn_opt, :label => Setting.swg_smps.amn_opt
  filter :amn_rmr, :label => Setting.swg_smps.amn_rmr
  filter :tmn_ipt, :label => Setting.swg_smps.tmn_ipt
  filter :tmn_opt, :label => Setting.swg_smps.tmn_opt
  filter :tmn_rmr, :label => Setting.swg_smps.tmn_rmr
  filter :rts, :label => Setting.swg_smps.rts
  filter :level_ab, :label => Setting.swg_smps.level_ab
  filter :desc, :label => Setting.swg_smps.desc
  filter :created_at

  index :title=>Setting.swg_smps.label + "管理" do
    selectable_column
    id_column
    
    column Setting.swg_smps.smp_date, :smp_date
    column Setting.swg_smps.act_ipt, :act_ipt
    column Setting.swg_smps.ipt_tmp, :ipt_tmp
    column Setting.swg_smps.ipt_ph, :ipt_ph
    column Setting.swg_smps.cod_ipt, :cod_ipt
    column Setting.swg_smps.cod_opt, :cod_opt
    column Setting.swg_smps.cod_rmr, :cod_rmr
    column Setting.swg_smps.amn_ipt, :amn_ipt
    column Setting.swg_smps.amn_opt, :amn_opt
    column Setting.swg_smps.amn_rmr, :amn_rmr
    column Setting.swg_smps.tmn_ipt, :tmn_ipt
    column Setting.swg_smps.tmn_opt, :tmn_opt
    column Setting.swg_smps.tmn_rmr, :tmn_rmr
    column Setting.swg_smps.rts, :rts
    column Setting.swg_smps.level_ab, :level_ab
    column Setting.swg_smps.desc, :desc

    column "创建时间", :created_at, :sortable=>:created_at do |f|
      f.created_at.strftime('%Y-%m-%d %H:%M:%S')
    end
    column "更新时间", :updated_at do |f|
      f.updated_at.strftime('%Y-%m-%d %H:%M:%S')
    end
    actions
  end

  form do |f|
    f.inputs "添加" + Setting.swg_smps.label do
      
      f.input :smp_date, :label => Setting.swg_smps.smp_date 
      f.input :act_ipt, :label => Setting.swg_smps.act_ipt 
      f.input :ipt_tmp, :label => Setting.swg_smps.ipt_tmp 
      f.input :ipt_ph, :label => Setting.swg_smps.ipt_ph 
      f.input :cod_ipt, :label => Setting.swg_smps.cod_ipt 
      f.input :cod_opt, :label => Setting.swg_smps.cod_opt 
      f.input :cod_rmr, :label => Setting.swg_smps.cod_rmr 
      f.input :amn_ipt, :label => Setting.swg_smps.amn_ipt 
      f.input :amn_opt, :label => Setting.swg_smps.amn_opt 
      f.input :amn_rmr, :label => Setting.swg_smps.amn_rmr 
      f.input :tmn_ipt, :label => Setting.swg_smps.tmn_ipt 
      f.input :tmn_opt, :label => Setting.swg_smps.tmn_opt 
      f.input :tmn_rmr, :label => Setting.swg_smps.tmn_rmr 
      f.input :rts, :label => Setting.swg_smps.rts 
      f.input :level_ab, :label => Setting.swg_smps.level_ab 
      f.input :desc, :label => Setting.swg_smps.desc 
    end
    f.actions
  end

  show :title=>Setting.swg_smps.label + "信息" do
    attributes_table do
      row "ID" do
        swg_smp.id
      end
      
      row Setting.swg_smps.smp_date do
        swg_smp.smp_date
      end
      row Setting.swg_smps.act_ipt do
        swg_smp.act_ipt
      end
      row Setting.swg_smps.ipt_tmp do
        swg_smp.ipt_tmp
      end
      row Setting.swg_smps.ipt_ph do
        swg_smp.ipt_ph
      end
      row Setting.swg_smps.cod_ipt do
        swg_smp.cod_ipt
      end
      row Setting.swg_smps.cod_opt do
        swg_smp.cod_opt
      end
      row Setting.swg_smps.cod_rmr do
        swg_smp.cod_rmr
      end
      row Setting.swg_smps.amn_ipt do
        swg_smp.amn_ipt
      end
      row Setting.swg_smps.amn_opt do
        swg_smp.amn_opt
      end
      row Setting.swg_smps.amn_rmr do
        swg_smp.amn_rmr
      end
      row Setting.swg_smps.tmn_ipt do
        swg_smp.tmn_ipt
      end
      row Setting.swg_smps.tmn_opt do
        swg_smp.tmn_opt
      end
      row Setting.swg_smps.tmn_rmr do
        swg_smp.tmn_rmr
      end
      row Setting.swg_smps.rts do
        swg_smp.rts
      end
      row Setting.swg_smps.level_ab do
        swg_smp.level_ab
      end
      row Setting.swg_smps.desc do
        swg_smp.desc
      end

      row "创建时间" do
        swg_smp.created_at.strftime('%Y-%m-%d %H:%M:%S')
      end
      row "更新时间" do
        swg_smp.updated_at.strftime('%Y-%m-%d %H:%M:%S')
      end
    end
  end

end
